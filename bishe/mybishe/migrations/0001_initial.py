# Generated by Django 2.1.2 on 2019-04-01 04:02

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='AddCreditOrder',
            fields=[
                ('add_id', models.AutoField(primary_key=True, serialize=False)),
                ('stu_id', models.IntegerField(blank=True, null=True)),
                ('rule_id', models.IntegerField(blank=True, null=True)),
                ('score', models.IntegerField(blank=True, null=True)),
                ('status', models.IntegerField(blank=True, null=True)),
            ],
            options={
                'db_table': 'add_credit_order',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Borrow',
            fields=[
                ('book_id', models.AutoField(primary_key=True, serialize=False)),
                ('book_name', models.CharField(blank=True, max_length=255, null=True)),
                ('status', models.IntegerField(blank=True, null=True)),
                ('price', models.DecimalField(blank=True, decimal_places=2, max_digits=10, null=True)),
            ],
            options={
                'db_table': 'borrow',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='BorrowOrder',
            fields=[
                ('borrow_id', models.AutoField(primary_key=True, serialize=False)),
                ('stu_id', models.IntegerField(blank=True, null=True)),
                ('book_id', models.IntegerField(blank=True, null=True)),
                ('startdate', models.DateTimeField(blank=True, null=True)),
                ('supposedate', models.DateTimeField(blank=True, null=True)),
                ('actdate', models.DateTimeField(blank=True, null=True)),
                ('penatly_status', models.IntegerField(blank=True, null=True)),
                ('appeal_status', models.IntegerField(blank=True, null=True)),
                ('return_status', models.IntegerField(blank=True, null=True)),
                ('price', models.DecimalField(blank=True, decimal_places=2, max_digits=10, null=True)),
            ],
            options={
                'db_table': 'borrow_order',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='BorrowRule',
            fields=[
                ('education', models.CharField(max_length=255, primary_key=True, serialize=False)),
                ('day', models.IntegerField(blank=True, null=True)),
            ],
            options={
                'db_table': 'borrow_rule',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Certification',
            fields=[
                ('certi_id', models.AutoField(primary_key=True, serialize=False)),
                ('student_choice_id', models.IntegerField(blank=True, null=True)),
                ('status', models.CharField(blank=True, max_length=255, null=True)),
            ],
            options={
                'db_table': 'certification',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Credit',
            fields=[
                ('credit_id', models.AutoField(primary_key=True, serialize=False)),
                ('stu_id', models.IntegerField(blank=True, null=True)),
                ('year', models.TextField(blank=True, null=True)),
                ('score', models.IntegerField(blank=True, null=True)),
            ],
            options={
                'db_table': 'credit',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='CultivatePlan',
            fields=[
                ('course_id', models.AutoField(primary_key=True, serialize=False)),
                ('course_name', models.CharField(blank=True, max_length=255, null=True)),
                ('major_id', models.IntegerField(blank=True, null=True)),
                ('credit', models.IntegerField(blank=True, null=True)),
                ('grade', models.IntegerField(blank=True, null=True)),
                ('semester', models.IntegerField(blank=True, null=True)),
                ('time', models.CharField(blank=True, max_length=255, null=True)),
                ('certification', models.IntegerField(blank=True, null=True)),
            ],
            options={
                'db_table': 'cultivate_plan',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Dorm',
            fields=[
                ('bed_id', models.AutoField(primary_key=True, serialize=False)),
                ('dorm_id', models.IntegerField(blank=True, null=True)),
                ('status', models.IntegerField(blank=True, null=True)),
            ],
            options={
                'db_table': 'dorm',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Instructor',
            fields=[
                ('instructor_id', models.AutoField(primary_key=True, serialize=False)),
                ('instructor_name', models.CharField(blank=True, max_length=255, null=True)),
            ],
            options={
                'db_table': 'instructor',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='LostHistory',
            fields=[
                ('lost_id', models.AutoField(primary_key=True, serialize=False)),
                ('borrow_id', models.IntegerField(blank=True, null=True)),
            ],
            options={
                'db_table': 'lost_history',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Major',
            fields=[
                ('major_id', models.AutoField(primary_key=True, serialize=False)),
                ('major_name', models.CharField(blank=True, max_length=255, null=True)),
            ],
            options={
                'db_table': 'major',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Orders',
            fields=[
                ('order_id', models.AutoField(primary_key=True, serialize=False)),
                ('product_id', models.IntegerField(blank=True, null=True)),
                ('buyer_id', models.IntegerField(blank=True, null=True)),
                ('seller_comm', models.IntegerField(blank=True, null=True)),
                ('buyer_comm', models.IntegerField(blank=True, null=True)),
                ('price', models.IntegerField(blank=True, null=True)),
            ],
            options={
                'db_table': 'orders',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Penalty',
            fields=[
                ('stu_pen_id', models.AutoField(primary_key=True, serialize=False)),
                ('borrow_id', models.IntegerField(blank=True, null=True)),
                ('pen_money', models.IntegerField(blank=True, null=True)),
                ('education', models.CharField(blank=True, max_length=255, null=True)),
            ],
            options={
                'db_table': 'penalty',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='PenAppeal',
            fields=[
                ('pen_appeal_id', models.IntegerField(primary_key=True, serialize=False)),
                ('stu_pen_id', models.IntegerField(blank=True, null=True)),
                ('teacher_id', models.IntegerField(blank=True, null=True)),
                ('status', models.IntegerField(blank=True, null=True)),
            ],
            options={
                'db_table': 'pen_appeal',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Products',
            fields=[
                ('pro_id', models.AutoField(primary_key=True, serialize=False)),
                ('pro_name', models.CharField(blank=True, max_length=255, null=True)),
                ('price_org', models.IntegerField(blank=True, null=True)),
                ('price_cur', models.IntegerField(blank=True, null=True)),
                ('seller_id', models.IntegerField(blank=True, null=True)),
                ('location', models.CharField(blank=True, max_length=255, null=True)),
                ('status', models.IntegerField(blank=True, null=True)),
            ],
            options={
                'db_table': 'products',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Rules',
            fields=[
                ('rule_id', models.AutoField(primary_key=True, serialize=False)),
                ('rule_name', models.CharField(blank=True, max_length=255, null=True)),
                ('score', models.IntegerField(blank=True, null=True)),
            ],
            options={
                'db_table': 'rules',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Scholarship',
            fields=[
                ('sch_id', models.AutoField(primary_key=True, serialize=False)),
                ('student_choice_id', models.IntegerField(blank=True, null=True)),
                ('status', models.CharField(blank=True, max_length=255, null=True)),
                ('stu_comm', models.CharField(blank=True, max_length=255, null=True)),
            ],
            options={
                'db_table': 'scholarship',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Student',
            fields=[
                ('stu_id', models.AutoField(primary_key=True, serialize=False)),
                ('stu_pwd', models.CharField(blank=True, max_length=255, null=True)),
                ('stu_name', models.CharField(blank=True, max_length=255, null=True)),
                ('stu_year', models.TextField(blank=True, null=True)),
                ('major_id', models.IntegerField(blank=True, null=True)),
                ('money', models.IntegerField(blank=True, null=True)),
                ('stu_edu', models.CharField(blank=True, max_length=255, null=True)),
                ('bed_id', models.IntegerField(blank=True, null=True)),
                ('dorm_id', models.IntegerField(blank=True, null=True)),
                ('instructor_id', models.IntegerField(blank=True, null=True)),
            ],
            options={
                'db_table': 'student',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='StudentChoice',
            fields=[
                ('student_choice_id', models.AutoField(primary_key=True, serialize=False)),
                ('teacher_choice_id', models.IntegerField(blank=True, null=True)),
                ('score', models.IntegerField(blank=True, null=True)),
                ('stu_id', models.IntegerField(blank=True, null=True)),
            ],
            options={
                'db_table': 'student_choice',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Teacher',
            fields=[
                ('tea_id', models.AutoField(primary_key=True, serialize=False)),
                ('teacher_name', models.CharField(blank=True, max_length=255, null=True)),
                ('major_id', models.IntegerField(blank=True, null=True)),
            ],
            options={
                'db_table': 'teacher',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='TeacherChoice',
            fields=[
                ('teacher_choice_id', models.AutoField(primary_key=True, serialize=False)),
                ('teacher_id', models.IntegerField(blank=True, null=True)),
                ('course_id', models.IntegerField(blank=True, null=True)),
                ('course_year', models.TextField(blank=True, null=True)),
                ('status', models.IntegerField(blank=True, null=True)),
                ('time', models.CharField(blank=True, max_length=225, null=True)),
                ('certification', models.IntegerField(blank=True, null=True)),
            ],
            options={
                'db_table': 'teacher_choice',
                'managed': False,
            },
        ),
    ]
