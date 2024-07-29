import requests
from bs4 import BeautifulSoup
import pandas as pd

HEADERS = ({'User-Agent':'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 
            'Accept-Language': 'en-US, en;q=0.5'})

titles = []
prices = []
original_prices = []
discounts = []
stars = []
reviews = [] 
description = []
    
for i in range(1, 11):
    url = f"https://www.flipkart.com/search?q=phones&otracker=search&otracker1=search&marketplace=FLIPKART&as-show=on&as=off&page={i}"
    r = requests.get(url, headers=HEADERS)
    soup = BeautifulSoup(r.text, "lxml")
    box = soup.find('div', class_='DOjaWF gdgoEp')
    
    def get_titles(box):
        try:
            titles = [t.text for t in box.find_all('div', class_='KzDlHZ')]
        except AttributeError:
            titles = []
        return titles

    def get_prices(box):
        try:
            prices = [p.text for p in box.find_all('div', class_='Nx9bqj _4b5DiR')]
        except AttributeError:
            prices = []
        return prices
    
    def get_original_prices(box):
        try:
            original_prices = [o.text for o in box.find_all('div', class_='yRaY8j ZYYwLA')]
        except AttributeError:
            original_prices = []
        return original_prices

    def get_discounts(box):
        try:
            discounts = [d.text for d in box.find_all('div', class_='UkUFwK')]
        except AttributeError:
            discounts = []
        return discounts
    
    def get_stars(box):
        try:
            stars = [s.text for s in box.find_all('div', class_='XQDdHH')]
        except AttributeError:
            stars = []
        return stars
    
    def get_reviews(box):
        try:
            reviews = [r.text for r in box.find_all('span', class_='Wphh3N')]
        except AttributeError:
            reviews = []
        return reviews
    
    def get_descs(box):
        try:
            descs = [d.text for d in box.find_all('ul', class_='G4BRas')]
        except AttributeError:
            descs = []
        return descs
    
    titles.extend(get_titles(box))
    prices.extend(get_prices(box))
    original_prices.extend(get_original_prices(box))
    discounts.extend(get_discounts(box))
    stars.extend(get_stars(box))
    reviews.extend(get_reviews(box))
    description.extend(get_descs(box))

max_len = max(len(titles), len(prices), len(original_prices), len(discounts), len(stars), len(reviews), len(description))

def pad_list(lst, length, pad_value=None):
    return lst + [pad_value] * (length - len(lst))

titles = pad_list(titles, max_len)
prices = pad_list(prices, max_len)
original_prices = pad_list(original_prices, max_len)
discounts = pad_list(discounts, max_len)
stars = pad_list(stars, max_len)
reviews = pad_list(reviews, max_len)
description = pad_list(description, max_len)

df = pd.DataFrame({
    'title': titles,
    'price': prices,
    'original_price': original_prices,
    'discount': discounts,
    'star': stars,
    'review': reviews,
    'description': description
})

df.to_csv('phones.csv')
