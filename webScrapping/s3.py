from bs4 import BeautifulSoup
import requests 

url = "https://www.jumia.ug/catalog/?q=phones"
page = requests.get(url)

soup = BeautifulSoup(page.content, 'html.parser')
lists = soup.find_all('article',class_="c-prd")

for list in lists:
    name = list.find('h3', class_="name").text
    curr = list.find('div',class_="prc").text
    old = list.find('div', class_="old").text
        
    info = [name,curr,old]
    print(info)





