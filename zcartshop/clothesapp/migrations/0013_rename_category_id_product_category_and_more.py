# Generated by Django 4.2.4 on 2023-08-19 08:42

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('clothesapp', '0012_product_packer'),
    ]

    operations = [
        migrations.RenameField(
            model_name='product',
            old_name='category_id',
            new_name='category',
        ),
        migrations.RenameField(
            model_name='product',
            old_name='subcategory_id',
            new_name='subcategory',
        ),
        migrations.RenameField(
            model_name='subcategory',
            old_name='category_id',
            new_name='category',
        ),
    ]
