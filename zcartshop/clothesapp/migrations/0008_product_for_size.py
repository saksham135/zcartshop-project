# Generated by Django 4.2.4 on 2023-08-19 08:10

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('clothesapp', '0007_product_for_gender'),
    ]

    operations = [
        migrations.AddField(
            model_name='product',
            name='for_size',
            field=models.CharField(choices=[('s', 's'), ('m', 'M'), ('l', 'L')], max_length=6, null=True),
        ),
    ]
