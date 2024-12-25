# Generated by Django 5.0.1 on 2024-02-18 12:55

import django.db.models.deletion
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('inventory', '0006_alter_product_prod_id'),
        ('transactions', '0002_alter_transaction_prod_id'),
    ]

    operations = [
        migrations.AlterField(
            model_name='transaction',
            name='prod_id',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='inventory.product'),
        ),
    ]
