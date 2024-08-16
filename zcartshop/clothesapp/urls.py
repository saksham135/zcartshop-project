from django.conf.urls.static import static
from django.urls import path
from clothesapp import views
from zcartshop import settings

urlpatterns = [
    path('', views.show_home,name='home'),
    path('register', views.CreateUser.as_view(), name='signup'),
    path('user-profile', views.add_user, name='profile'),
    path('About', views.show_about, name='about'),
    path('Products', views.show_product, name='products'),
    path('Blog', views.show_blog, name='blog'),
    path('Contact', views.show_contact, name='contact'),
    path('user-login', views.showlogin, name='login'),
    path('user-logout', views.dologout, name='mylogout'),
    path('shopping-cart', views.showcart, name='cart'),
    path('add-to-cart', views.addtocart, name='addtocart'),
    path('order', views.saveorder, name='saveorder'),
    path('checkout',views.checkout,name='checkout'),
    path('order-success', views.ordersuccess, name='ordersuccess'),
    path('previous-orders', views.showorders, name='orders'),
    path('order-details/<int:oid>', views.order_details, name='orderdetails'),
    path('search-products', views.searchproducts, name='search'),
    path('change-password',views.changepassword,name='changepassword'),
    path('delete-from-cart/<int:cartid>', views.delete_from_cart, name='delete_from_cart'),
    path('product-details/<int:pid>', views.product_details, name='productdetails'),
    path('products/<int:cid>', views.category_products, name='product'),




] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
