# Generated by Django 4.1 on 2022-08-19 10:16

import app.utils
from django.conf import settings
import django.core.validators
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='BrokerAgency',
            fields=[
                ('brokerAgency_id', models.AutoField(primary_key=True, serialize=False)),
                ('brokerAgency_name', models.CharField(max_length=20)),
                ('brokerAgency_representative_name', models.CharField(max_length=20)),
                ('brokerAgency_number1', models.CharField(max_length=20, validators=[django.core.validators.RegexValidator(regex='^01([0|1|6|7|8|9]?)-?([0-9]{3,4})-?([0-9]{4})$')])),
                ('brokerAgency_number2', models.CharField(blank=True, max_length=20, null=True, validators=[django.core.validators.RegexValidator(regex='^01([0|1|6|7|8|9]?)-?([0-9]{3,4})-?([0-9]{4})$')])),
                ('brokerAgency_location', models.TextField()),
                ('brokerAgency_company_registration_number', models.CharField(max_length=12)),
                ('brokerAgency_registration_number', models.CharField(max_length=30)),
                ('brokerAgency_created_at', models.DateTimeField(auto_now_add=True)),
                ('brokerAgency_updated_at', models.DateTimeField(auto_now=True)),
                ('user', models.ManyToManyField(blank=True, default=1, to=settings.AUTH_USER_MODEL)),
            ],
        ),
        migrations.CreateModel(
            name='CheckList',
            fields=[
                ('checklist_id', models.AutoField(primary_key=True, serialize=False)),
                ('is_confirmed', models.BooleanField(default=False)),
            ],
        ),
        migrations.CreateModel(
            name='RoomInfo',
            fields=[
                ('roominfo_id', models.AutoField(primary_key=True, serialize=False)),
                ('basicInfo_location_x', models.DecimalField(decimal_places=7, max_digits=10)),
                ('basicInfo_location_y', models.DecimalField(decimal_places=7, max_digits=10)),
                ('basicInfo_address', models.TextField(blank=True, null=True)),
                ('basicInfo_brokerAgency', models.TextField(blank=True, null=True)),
                ('basicInfo_move_in_date', models.TextField(blank=True, null=True)),
                ('basicInfo_brokerAgency_contact', models.CharField(max_length=20, null=True, validators=[django.core.validators.RegexValidator(regex='^01([0|1|6|7|8|9]?)-?([0-9]{3,4})-?([0-9]{4})$')])),
                ('basicInfo_room_type', models.CharField(blank=True, choices=[('J', 'Jeonse'), ('BJ', 'Ban Jeonse'), ('M', 'Monthly Rent'), ('', 'not selected')], max_length=2, null=True)),
                ('basicInfo_deposit', models.IntegerField(blank=True, null=True)),
                ('basicInfo_monthly_rent', models.IntegerField(blank=True, null=True)),
                ('basicInfo_maintenance_fee', models.IntegerField(blank=True, null=True)),
                ('basicInfo_floor', models.IntegerField(blank=True, null=True)),
                ('basicInfo_area', models.FloatField(blank=True, null=True)),
                ('basicInfo_number_of_rooms', models.CharField(blank=True, choices=[('1', '1 Room'), ('1.5', '1.5 Room'), ('2', '2 Room'), ('3', '3 Room'), ('', 'not selected')], max_length=3, null=True)),
                ('basicInfo_interior_structure', models.CharField(blank=True, choices=[('O', 'Open'), ('K', 'Kitchen separate Type'), ('V', 'Veranda separate Type'), ('L', 'Double Decker Type'), ('KV', 'Kitchen Veranda separate Type'), ('', 'not selected')], max_length=2, null=True)),
                ('option_gas_stove', models.BooleanField(default=False)),
                ('option_induction', models.BooleanField(default=False)),
                ('option_microwave', models.BooleanField(default=False)),
                ('option_refrigerator', models.BooleanField(default=False)),
                ('option_washing_machine', models.BooleanField(default=False)),
                ('option_air_conditioner', models.BooleanField(default=False)),
                ('option_internet', models.BooleanField(default=False)),
                ('option_tv', models.BooleanField(default=False)),
                ('option_wifi', models.BooleanField(default=False)),
                ('option_closet', models.BooleanField(default=False)),
                ('option_cabinet', models.BooleanField(default=False)),
                ('option_shoe_rack', models.BooleanField(default=False)),
                ('option_bed', models.BooleanField(default=False)),
                ('option_desk', models.BooleanField(default=False)),
                ('option_chair', models.BooleanField(default=False)),
                ('option_drying_rack', models.BooleanField(default=False)),
                ('detailInfo_is_moldy', models.BooleanField(null=True)),
                ('detailInfo_is_leak', models.BooleanField(null=True)),
                ('detailInfo_is_bug', models.BooleanField(null=True)),
                ('detailInfo_is_crack', models.BooleanField(null=True)),
                ('detailInfo_soundproof', models.CharField(blank=True, choices=[('A', 'good'), ('B', 'fair'), ('C', 'poor'), ('', 'not selected')], max_length=1, null=True)),
                ('detailInfo_window_size', models.CharField(blank=True, choices=[('L', 'large'), ('M', 'medium'), ('S', 'small'), ('', 'not selected')], max_length=1, null=True)),
                ('detailInfo_main_direction', models.CharField(blank=True, choices=[('E', 'east'), ('W', 'west'), ('S', 'south'), ('N', 'north'), ('', 'not selected')], max_length=1, null=True)),
                ('detailInfo_ventilator', models.CharField(blank=True, choices=[('F', 'fast'), ('N', 'normal'), ('S', 'slow'), ('', 'not selected')], max_length=1, null=True)),
                ('detailInfo_ventilation', models.CharField(blank=True, choices=[('A', 'good'), ('B', 'fair'), ('C', 'poor'), ('', 'not selected')], max_length=1, null=True)),
                ('detailInfo_external_noise', models.CharField(blank=True, choices=[('L', 'large'), ('M', 'medium'), ('S', 'small'), ('', 'not selected')], max_length=1, null=True)),
                ('detailInfo_water_pressure', models.CharField(blank=True, choices=[('S', 'strong'), ('N', 'normal'), ('W', 'weak'), ('', 'not selected')], max_length=1, null=True)),
                ('detailInfo_drainage', models.CharField(blank=True, choices=[('S', 'strong'), ('N', 'normal'), ('W', 'weak'), ('', 'not selected')], max_length=1, null=True)),
                ('detailInfo_hot_water', models.CharField(blank=True, choices=[('S', 'strong'), ('N', 'normal'), ('W', 'weak'), ('', 'not selected')], max_length=1, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='Tag',
            fields=[
                ('tag_id', models.AutoField(primary_key=True, serialize=False)),
                ('tag_name', models.CharField(max_length=20)),
            ],
        ),
        migrations.CreateModel(
            name='Room',
            fields=[
                ('room_id', models.AutoField(primary_key=True, serialize=False)),
                ('room_created_at', models.DateTimeField(default=app.utils.local_time, editable=False)),
                ('brokerAgency', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='app.brokeragency')),
                ('roomInfo', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to='app.roominfo')),
                ('tag', models.ManyToManyField(to='app.tag')),
            ],
        ),
        migrations.CreateModel(
            name='Interest',
            fields=[
                ('interest_id', models.AutoField(primary_key=True, serialize=False)),
                ('room', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='interest', to='app.room')),
                ('user', models.ForeignKey(default=1, on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
        migrations.CreateModel(
            name='Image',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('image', models.ImageField(upload_to=app.utils.rename_imagefile_to_uuid)),
                ('roomInfo', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='app.roominfo')),
            ],
        ),
        migrations.CreateModel(
            name='ConfirmedRoom',
            fields=[
                ('confirmedRoom_id', models.AutoField(primary_key=True, serialize=False)),
                ('checklist', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='app.checklist')),
                ('room', models.ForeignKey(null=True, on_delete=django.db.models.deletion.DO_NOTHING, to='app.room')),
                ('user', models.ForeignKey(default=1, on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
        migrations.AddField(
            model_name='checklist',
            name='room',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, to='app.room'),
        ),
        migrations.AddField(
            model_name='checklist',
            name='roomInfo',
            field=models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to='app.roominfo'),
        ),
        migrations.AddField(
            model_name='checklist',
            name='user',
            field=models.ForeignKey(default=1, on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL),
        ),
        migrations.CreateModel(
            name='BrokersManner',
            fields=[
                ('brokerManner_id', models.AutoField(primary_key=True, serialize=False)),
                ('brokersManner_score', models.FloatField()),
                ('brokerAgency', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='brokerAgency', to='app.brokeragency')),
                ('user', models.ForeignKey(default=1, on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
    ]
