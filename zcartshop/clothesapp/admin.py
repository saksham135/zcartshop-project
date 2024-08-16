from django.contrib import admin

# Register your models here.
from clothesapp.models import Category, Subcategory, Product, Brand, Order, Profile, ShopByCatgory

admin.site.register(Category)
admin.site.register(Subcategory)
# admin.site.register(Product)
admin.site.register(Brand)
admin.site.register(Profile)
admin.site.register(ShopByCatgory)

@admin.register(Product)
class ProductList(admin.ModelAdmin):
    list_display = ["category","subcategory","product_name","brand_name","price","for_gender"]
    list_filter = ["category","subcategory","price"]
    list_per_page = 1


@admin.register(Order)
class OrderList(admin.ModelAdmin):
    list_display = ["order_date", "name", "grand_total", "payment_method", "order_status"]