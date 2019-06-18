# Generated by Django 2.1.4 on 2019-01-19 08:35

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('CRM', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Mt5Login',
            fields=[
                ('login', models.BigIntegerField(db_column='Login', primary_key=True, serialize=False)),
                ('password', models.CharField(db_column='Password', max_length=64)),
            ],
            options={
                'db_table': 'mt5_login',
                'managed': False,
            },
        ),
        migrations.AlterModelOptions(
            name='mt5positions',
            options={},
        ),
    ]