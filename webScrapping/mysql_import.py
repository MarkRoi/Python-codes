import MySQLdb
import csv
import sys


db=MySQLdb.connect("localhost","root","","scrapper")
cursor = db.cursor()
csv_data = csv.reader(open('phones.csv'))
header = next(csv_data)
print("Importing the file")

for row in csv_data:
    print(row)
    cursor.execute("INSERT INTO phone_dat(Name,Current_price,Old_price) VALUES(%s,%s,%s)",row)

db.commit()
cursor.close()
print("Done")

