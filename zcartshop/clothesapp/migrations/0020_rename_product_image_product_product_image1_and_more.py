# Generated by Django 4.2.4 on 2023-08-28 17:03

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('clothesapp', '0019_alter_product_description'),
    ]

    operations = [
        migrations.RenameField(
            model_name='product',
            old_name='product_image',
            new_name='product_image1',
        ),
        migrations.AddField(
            model_name='product',
            name='product_image2',
            field=models.ImageField(blank=True, null=True, upload_to='product_pics'),
        ),
        migrations.AddField(
            model_name='product',
            name='product_image3',
            field=models.ImageField(blank=True, null=True, upload_to='product_pics'),
        ),
    ]
