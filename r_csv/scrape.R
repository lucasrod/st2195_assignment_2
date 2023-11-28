library(rvest)
# This function assumes that the desired html_element is the first with class="wikitable"
scrape_data <- function(url) {
  page <- read_html(url)
  table_element <- html_element(page, ".wikitable")
  target_data <- html_table(table_element, fill = TRUE)
  return(target_data)
}
