# Generated by Django 4.2.4 on 2023-09-11 18:20

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('clothesapp', '0025_order_order_status'),
    ]

    operations = [
        migrations.AddField(
            model_name='order',
            name='name',
            field=models.CharField(default=None, max_length=100),
        ),
    ]
