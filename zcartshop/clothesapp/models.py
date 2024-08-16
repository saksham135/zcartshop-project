from ckeditor.fields import RichTextField
from django.contrib.auth.models import User
from django.db import models

# Create your models here.
from django.db.models.signals import post_save
from django.dispatch import receiver


class ShopByCatgory(models.Model):
    product_type_category=models.CharField(max_length=100)

    def __str__(self):
        return self.product_type_category

class Category(models.Model):
    product_type_category = models.ForeignKey(ShopByCatgory,on_delete=models.CASCADE,null=True)
    category_name=models.CharField(max_length=100)

    def __str__(self):
        return self.category_name

class Subcategory(models.Model):
    product_type_category = models.ForeignKey(ShopByCatgory, on_delete=models.CASCADE, null=True)
    category=models.ForeignKey(Category,on_delete=models.CASCADE)
    subcategory_name=models.CharField(max_length=100)

    def __str__(self):
        return self.subcategory_name

class Brand(models.Model):
    brand_name=models.CharField(max_length=100)

    def __str__(self):
        return self.brand_name


class Product(models.Model):
    product_type_category = models.ForeignKey(ShopByCatgory, on_delete=models.CASCADE,null=True)
    category = models.ForeignKey(Category, on_delete=models.CASCADE)
    subcategory = models.ForeignKey(Subcategory, on_delete=models.CASCADE)
    product_name=models.CharField(max_length=100)
    brand_name=models.ForeignKey(Brand,on_delete=models.CASCADE,null=True)
    price=models.IntegerField(default=0)
    discounted_price=models.IntegerField(default=0)
    gender_choices=(('male','Male'),('female','Female'),('other','Other'))
    for_gender=models.CharField(max_length=7,choices=gender_choices,null=True)
    Quantity=models.IntegerField(default=0)
    size_choose = (('s', 'S'), ('m', 'M'), ('l', 'L'))
    for_size = models.CharField(max_length=1, choices=size_choose, null=True)
    product_dimensions=models.CharField(max_length=100,blank=True)
    description=RichTextField(null=True,blank=True)
    additional_description = RichTextField(null=True, blank=True)
    Packer=models.TextField(blank=True)
    product_image1=models.ImageField(upload_to='product_pics',null=True,blank=True)
    product_image2 = models.ImageField(upload_to='product_pics', null=True, blank=True)
    product_image3 = models.ImageField(upload_to='product_pics', null=True, blank=True)
    featured=models.BooleanField(default=False)
    manufacturing_date=models.DateField(null=True,blank=True)
    entry_datetime=models.DateTimeField(auto_now_add=True,null=True,blank=True)
    update_time=models.DateTimeField(auto_now=True,null=True,blank=True)
    site_url=models.URLField(null=True,blank=True)



    def __str__(self):
        return self.product_name

class Cart(models.Model):
    product = models.ForeignKey(Product,on_delete=models.CASCADE)
    price = models.IntegerField()
    qty = models.IntegerField()
    total_cost = models.IntegerField()
    username = models.ForeignKey(User,on_delete=models.CASCADE)

    def __str__(self):
        return self.product.product_name


class Order(models.Model):
    order_date = models.DateTimeField(auto_now_add=True)
    shipping_charges = models.IntegerField()
    grand_total = models.IntegerField()
    username = models.ForeignKey(User,on_delete=models.CASCADE)
    payment_choices = (('cod','Cash on Delivery'),('paytm','Paytm'),('gpay','Google pay'))
    payment_method = models.CharField(choices=payment_choices,max_length=16)
    address = models.TextField(max_length=100)
    name = models.CharField(max_length=100)
    phone = models.IntegerField()
    zip = models.IntegerField()
    email = models.CharField(max_length=100)
    status = (('shipped', 'Order Shipped'), ('received', 'Order Received'), ('processing', 'Order Processing'),
              ('delivered', 'Order Delivered'), ('complete', 'Order Complete'))
    order_status = models.CharField(choices=status, max_length=15, null=True, default='received')

    def __str__(self):
        return str(self.id)

class OrderDetails(models.Model):
    order_no = models.ForeignKey(Order,on_delete=models.CASCADE)
    pid = models.ForeignKey(Product, on_delete=models.CASCADE)
    price = models.IntegerField()
    qty = models.IntegerField()
    total_cost = models.IntegerField()

class Profile(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    phone = models.BigIntegerField(null=True, blank=True, default=0)
    gender_choices = (('male', 'Male'), ('female', 'Female'), ('other', 'Other'))
    gender = models.CharField(max_length=6, choices=gender_choices)
    birth_date = models.DateField(null=True, blank=True)

    def __str__(self):
        return self.user.username




@receiver(post_save, sender=User)
def create_user_profile(sender, instance, created, **kwargs):
    if created:
        Profile.objects.create(user=instance)


@receiver(post_save, sender=User)
def save_user_profile(sender, instance, **kwargs):
    instance.profile.save()