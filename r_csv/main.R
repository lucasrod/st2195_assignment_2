source("scrape.R")
source("transform.R")
source("save.R")

url <- "https://en.wikipedia.org/wiki/Comma-separated_values"
csv_file_path <- "data/cars_data.csv"

# Scrape, transform, and save data
data <- scrape_data(url)
transformed_data <- transform_data(data)
save_data(transformed_data, csv_file_path)



