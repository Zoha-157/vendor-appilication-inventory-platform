from django.contrib import admin
from .models import Product


# Register your models
class ProductAdmin(admin.ModelAdmin):
    list_display = ('prod_id','prod_name','price')
admin.site.register(Product,ProductAdmin)
