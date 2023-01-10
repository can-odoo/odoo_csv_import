import os
os.system('odoo_import_thread.py -c myconfig.conf --file test.csv --model=account.move --encoding=utf-8 --worker 3 --size 100  --ignore="Item No_","Taxable","Tax","Total" --sep=" " --o2m')