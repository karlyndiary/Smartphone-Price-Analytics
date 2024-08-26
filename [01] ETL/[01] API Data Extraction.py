import pandas as pd
import numpy as np
import requests
import json

url = "https://real-time-flipkart-api.p.rapidapi.com/product-search"

headers = {
    "x-rapidapi-key": "API-Key",
    "x-rapidapi-host": "real-time-flipkart-api.p.rapidapi.com"
}

# Initialize an empty list to hold all phone data
all_phones = []

# Loop through 80 pages
for page in range(1, 81):
    querystring = {"q": "phones", "page": str(page), "sort_by": "popularity"}
    
    response = requests.get(url, headers=headers, params=querystring)
    phones = response.json()
    
    # Extract the list of phones and append to all_phones
    phones_list = phones.get('products', [])
    all_phones.extend(phones_list)

# Convert the list of all phones to JSON
phones_json = json.dumps(all_phones, indent=4)

# Save the JSON data to a file
with open("phones_data.json", "w") as json_file:
    json_file.write(phones_json)

# Convert the JSON data to a DataFrame
df = pd.DataFrame(all_phones)

# Save the DataFrame
df.to_csv('phones.csv')
