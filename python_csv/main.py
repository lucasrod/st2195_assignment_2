from scrape import scrape_data
from transform import transform_data
from save import save_data

url = "https://en.wikipedia.org/wiki/Comma-separated_values"
csv_file_path = "data/cars_data.csv"

table = scrape_data(url)
transformed_table = transform_data(table)
save_data(transformed_table, csv_file_path)

