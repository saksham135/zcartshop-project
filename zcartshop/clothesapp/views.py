from django.contrib import messages
from django.contrib.auth import login, logout, authenticate
from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User
from django.contrib.messages.views import SuccessMessageMixin
from django.core.mail import EmailMultiAlternatives

from django.http import HttpResponse, HttpResponseRedirect
from django.shortcuts import render, redirect

# Create your views here.
from django.urls import reverse
from django.views.generic import CreateView

from clothesapp.forms import RegistrationForm, LoginForm, ProfileForm
from clothesapp.models import Product, Cart, Order, OrderDetails, Category
from zcartshop import settings


def show_home(request):
    featured_products= Product.objects.filter(featured=True)

    latest_products=Product.objects.all().order_by("-entry_datetime")[:3]
    return render(request, "index.html", {"featuredproducts":featured_products, "latestproducts":latest_products,})

def product_details(request, pid):
    product_data = Product.objects.get(id=pid)
    return render(request, "product-detail.html", {"pdata": product_data})

def category_products(request, cid):
    products = Product.objects.filter(category=cid)
    category_data = Category.objects.get(id=cid)
    return render(request, "products.html", {"products": products, "category_name": category_data.category_name})

def show_about(request):
    return render(request,"about.html")

def show_contact(request):
    return render(request,"contact.html")

def show_blog(request):
    featured_products = Product.objects.filter(featured=True)
    return render(request,"blog.html",{"featuredproducts":featured_products})

def show_product(request):
    featured_products = Product.objects.filter(featured=True)
    return render(request,"products.html",{"featuredproducts":featured_products})


def addtocart(request):
    pid = request.POST.get("pid")
    price = request.POST.get("price")
    qty = request.POST.get("qty")
    request.session["pid"] = pid
    request.session["price"] = price
    request.session["qty"] = qty
    if "myusername" not in request.session:
        return HttpResponseRedirect(reverse('login'))
    else:
        product_obj = Product.objects.get(id=pid)
        user_obj = User.objects.get(username=request.session["myusername"])
        cart_obj = Cart.objects.filter(product=product_obj, username=user_obj).first()
        if cart_obj:
            cart_obj.qty = int(cart_obj.qty) + int(qty)
            totalcost = int(price) * int(cart_obj.qty)
            cart_obj.total_cost = totalcost
            Cart.objects.filter(product=product_obj, username=user_obj).update(qty=cart_obj.qty,
                                                                               total_cost=cart_obj.total_cost)
        else:
            cartobj = Cart()
            cartobj.product = Product.objects.get(id=pid)
            cartobj.qty = qty
            cartobj.price = price
            totalcost = int(price) * int(qty)
            cartobj.total_cost = totalcost
            cartobj.username = User.objects.get(username=request.session["myusername"])
            cartobj.save()
        return HttpResponseRedirect(reverse('cart'))

@login_required()
def showcart(request):
    cart_obj = Cart.objects.filter(username=User.objects.get(username=request.session["myusername"]))
    grandtotal = 0
    for cart in cart_obj:
        grandtotal += cart.total_cost
    return render(request, "cart.html", {"cart_data": cart_obj, "gtotal": grandtotal})

@login_required()
def showorders(request):
    order_obj = Order.objects.filter(username=User.objects.get(username=request.session["myusername"]))
    return render(request, "orders.html", {"orders_data": order_obj})

@login_required()
def changepassword(request):
    if request.method == "POST":
        oldpassword = request.POST.get("oldpassword")
        newpass1 = request.POST.get("newpassword")
        newpass2 = request.POST.get("confirmpassword")
        if newpass1 == newpass2:
            myusername = request.session["myusername"]
            userobj = authenticate(username=myusername, password=oldpassword)
            if userobj is not None:
                userobj.set_password(newpass2)
                userobj.save()
                logout(request)
                messages.success(request, 'Password changed successfully. Login again')
                return HttpResponseRedirect(reverse('login'))
            else:
                messages.success(request, 'Wrong old password')
                return render(request, "changepassword.html")
        else:
            messages.success(request, 'New Password does not match')
            return render(request, "changepassword.html")
    else:
        return render(request, "changepassword.html")

@login_required()
def checkout(request):
    cart_obj = Cart.objects.filter(username=User.objects.get(username=request.session["myusername"]))
    grandtotal = 0

    for cart in cart_obj:
        grandtotal += cart.total_cost
    if grandtotal > 2500:
        shipping = 0
    else:
        shipping = 100
    grandtotal += shipping
    return render(request, "checkout.html", {"cart_data": cart_obj, "gtotal": grandtotal, "shipping": shipping})

@login_required()
def saveorder(request):
    name = request.POST.get("name")
    address = request.POST.get("address")
    zipcode = request.POST.get("zipcode")
    email = request.POST.get("email")
    phone = request.POST.get("phone")
    payment_type = request.POST.get("paymenttype")
    shippingcharges = request.POST.get("shippingcharges")
    gtotal = request.POST.get("grandtotal")
    order_obj = Order()
    order_obj.name = name
    order_obj.address = address
    order_obj.zip = zipcode
    order_obj.email = email
    order_obj.phone = phone
    order_obj.payment_method = payment_type
    order_obj.shipping_charges = shippingcharges
    order_obj.grand_total = gtotal
    order_obj.username = User.objects.get(username=request.session["myusername"])
    order_obj.save()
    cart_obj = Cart.objects.filter(username=User.objects.get(username=request.session["myusername"]))

    for cart in cart_obj:
        orderdetails_obj = OrderDetails()
        orderdetails_obj.order_no = Order.objects.get(id=order_obj.id)
        orderdetails_obj.pid = Product.objects.get(id=cart.product.id)
        orderdetails_obj.qty = cart.qty
        orderdetails_obj.price = cart.price
        orderdetails_obj.total_cost = cart.total_cost
        orderdetails_obj.username = User.objects.get(username=request.session["myusername"])
        orderdetails_obj.save()

    cart_obj.delete()

    return HttpResponseRedirect(reverse('ordersuccess'))

def ordersuccess(request):
    userobj = User.objects.get(username=request.session["myusername"])
    ordersdata = Order.objects.filter(username=userobj).order_by('-id')[:1]
    message = EmailMultiAlternatives('Thanks for your order', 'We have received your order and your order no is ' + str(ordersdata[0]),
                                     to=[ordersdata[0].email], from_email=settings.EMAIL_HOST_USER,
                                     reply_to=['bhatiasaksham659@gmail.com'])
    result = message.send(fail_silently=False)
    return render(request, "order-success.html", {'orderno': ordersdata[0]})



def delete_from_cart(request,cartid):
    cart_obj = Cart.objects.get(id=cartid)
    cart_obj.delete()
    return HttpResponseRedirect(reverse(('cart')))

def searchproducts(request):
    search_data = Product.objects.filter(product_name__icontains=request.POST.get("searchbox"))
    return render(request, "products-search.html", {"search_data": search_data})


def order_details(request, oid):
    orders_data = OrderDetails.objects.filter(order_no=oid)
    return render(request, "order-details.html", {"orders_data": orders_data})


class CreateUser(SuccessMessageMixin, CreateView):
    form_class = RegistrationForm
    template_name = 'signup.html'
    success_url = '/register'
    success_message = "Signup successful. You can login now"

    def dispatch(self, *args, **kwargs):
        return super(CreateUser, self).dispatch(*args, **kwargs)



def showlogin(request):
    if request.user.is_authenticated and request.user.is_staff:
        logout(request)
    formobj = LoginForm(request.POST or None)
    if formobj.is_valid():
        username1 = formobj.cleaned_data.get("username1")
        userobj = User.objects.get(username__iexact=username1)
        request.session["myusername"] = username1
        login(request, userobj)
        redirect_to = request.POST.get('mynext')
        if redirect_to:
            return redirect(redirect_to)
        else:
            return redirect('home')
    else:
        return render(request, "login.html", {"form": formobj})

def dologout(request):
    logout(request)
    return HttpResponseRedirect(reverse('home'))

def add_user(request):
    pform = ProfileForm(request.POST or None, instance=request.user.profile)
    if pform.is_valid():
        pform.save()
        messages.success(request, "Profile updated successfully")
        return render(request, "profile.html", {'form': pform})
    return render(request, "profile.html", {'form': pform})