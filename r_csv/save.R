# Function to save data to a CSV file
save_data <- function(data_frame, file_path) {
  # Create the directory if it doesn't exist
  dir.create(dirname(file_path), recursive = TRUE, showWarnings = FALSE)
  write.csv(data_frame, file_path, row.names = FALSE)
}