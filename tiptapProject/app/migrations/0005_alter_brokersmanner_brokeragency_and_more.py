# Generated by Django 4.0.6 on 2022-08-11 09:43

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('app', '0004_alter_brokeragency_brokeragency_company_registration_number_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='brokersmanner',
            name='brokerAgency',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='brokerAgency', to='app.brokeragency'),
        ),
        migrations.AlterField(
            model_name='confirmedroom',
            name='room',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.DO_NOTHING, to='app.room'),
        ),
    ]
