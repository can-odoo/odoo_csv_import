#!/bin/bash

# if git repo clonned using https://github.com/tfrancoi/odoo_csv_import.git, use below command
# python3 odoo_import_thread.py -c myconfig.conf --file account_move.csv --model=account.move --encoding=utf-8 --worker 3 --size 100  --ignore="Item No_","Taxable","Tax","Total","invoice_line_ids/tax_ids" --sep="," --o2m

# if used `pip install odoo_import_export_client`, use below command
odoo_import_thread.py -c myconfig.conf --file test.csv --model=account.move --encoding=utf-8 --worker 3 --size 100  --ignore="Item No_","Taxable","Tax","Total" --sep=" " --o2m
