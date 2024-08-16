import datetime
import urllib
import json
from django import template
from django.contrib.auth.models import User


from clothesapp.models import Cart, Category
from zcartshop.settings import OPENWEATHER_API_KEY

register=template.Library()
@register.simple_tag
def current_time():
    return datetime.datetime.now()

@register.simple_tag(takes_context=True)
def grandtotal(context):
    if "myusername" in context.request.session:
        cart_obj = Cart.objects.filter(username=User.objects.get(username=context.request.session["myusername"]))
        grandtotal = 0
        for cart in cart_obj:
            grandtotal += cart.total_cost
        return grandtotal
    else:
        return 0

@register.inclusion_tag('fetch-categories.html')
def fetch_categories():
    queryset = Category.objects.all()
    context = {
        "categories": queryset
    }
    return context

@register.simple_tag
def current_time():
    return datetime.datetime.now()


@register.simple_tag
def current_temperature():
    source = urllib.request.urlopen(
        "https://api.openweathermap.org/data/2.5/weather?q=Jalandhar,IN&appid=" + OPENWEATHER_API_KEY + "&units=metric").read()
    data = json.loads(source)
    return "Current Temperature in Jalandhar is " + str(data["main"]["temp"]) + " and Humidity in Jalandhar is " + str(
        data["main"]["humidity"])