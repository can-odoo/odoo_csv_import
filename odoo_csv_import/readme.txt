requirements, run below command in terminal
-------------------------------------------
pip3 install odoo_import_export_client


// create myconfig.conf file that contains
---------------------------------
[Connection]
hostname = database_name.odoo.com
database = database_name
login = user_id
password = password
protocol = xmlrpcs
port = 443
uid = 2

// import data file_type
------------------------
must be in csv format seprated by `,`

// csv file name
----------------
if possible make sure file_name should be `account_move.csv`

// account_move.csv
-------------------
Date format should be yyyy-mm-dd
invoice_line_ids/tax_ids/id
CSV header file must contain id column which contains unique xmlid, also use technical name of the fields,
you can field technical name by activating Odoo developer mode and hover over particular field,
where fields are one2many their header should be, line_ids/field1

// Linux User run .sh file
--------------------------
sh import_csv.sh


// Windows User run .py file
----------------------------
python3 import_csv.py

---:ENJOY:---


::NOTES::
=========
technical field names
---------------------
id
partner_id/id
invoice_date
invoice_date_due
invoice_line_ids/product_id
invoice_line_ids/account_id
invoice_line_ids/analytic_account_id
invoice_line_ids/quantity
invoice_line_ids/price_unit
invoice_line_ids/tax_ids/id
journal_id
payment_info
payment_method
payment_reference
invoice_cash_rounding_id Taxable
Tax
Total
move_type


Manually command:
=================

When use pip3 use below:
------------------------
odoo_import_thread.py -c myconfig.conf --file test.csv --model=account.move --encoding=utf-8 --worker 3 --size 100  --ignore="Item No_","Taxable","Tax","Total" --sep=" " --o2m

When using git repo use:
------------------------
python3 odoo_import_thread.py -c myconfig.conf --file test.csv --model=account.move --encoding=utf-8 --worker 3 --size 100  --ignore="Item No_","Taxable","Tax","Total" --sep=" " --o2m