# Generated by Django 5.0.1 on 2024-02-11 18:34

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('inventory', '0004_remove_product_is_superuser_customuser'),
    ]

    operations = [
        migrations.DeleteModel(
            name='CustomUser',
        ),
    ]
