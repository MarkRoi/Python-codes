from bs4 import BeautifulSoup
import requests
from csv import writer

url = "https://www.jumia.ug/catalog/?q=phones"
page = requests.get(url)

soup = BeautifulSoup(page.content, 'html.parser')
lists = soup.find_all('article',class_="c-prd")

with open('phones.csv', 'w', encoding='utf8', newline='') as f:
    thewriter =writer(f)
    header = ['Name','Current_Price','Old_price']
    thewriter.writerow(header)

    for list in lists:
        name = list.find('h3', class_="name").text
        curr = list.find('div',class_="prc").text
        old = list.find('div', class_="old").text
        
        info = [name,curr,old]
        thewriter.writerow(info)





