import pandas as pd
import os
from io import StringIO

def save_data(table, file_path):
    # Create the directory if it does not exist
    os.makedirs(os.path.dirname(file_path), exist_ok=True)

    # Wrap HTML in StringIO object
    html_string = StringIO(str(table))

    # Convert table to DataFrame and save as CSV
    df = pd.read_html(html_string)[0]
    df.to_csv(file_path, index=False)