import pandas as pd
import pyodbc
from sqlalchemy import create_engine
import urllib

df = pd.read_csv(r'C:\Users\Karen Fernandes\anaconda3\Files\Projects\Web Scraping\cleaned_phones_dataset.csv')
df.head(2)

# rename Unnamed: 0 column to id
df.rename(columns={'Unnamed: 0': 'id'}, inplace=True)

server = 'LAPTOP-68P3K4HH\SQLEXPRESS'
database = 'Flipkart'
username = 'your_username'
password = 'your_password'

# Create a connection string
connection_string = f"mssql+pyodbc://{username}:{urllib.parse.quote_plus(password)}@{server}/{database}?driver=ODBC+Driver+17+for+SQL+Server"
engine = create_engine(connection_string)

try:
    with engine.connect() as connection:
        print("Connection successful!")
except Exception as e:
    print(f"Connection failed: {e}")

table_name = 'Phones'
try:
    df.to_sql(table_name, engine, if_exists='append', index=False)
    print("Data loaded successfully!")
except Exception as e:
    print(f"Data load failed: {e}")
