import pandas as pd

def save_data(table, file_path):
    df = pd.read_html(str(table))[0]
    df.to_csv(file_path, index=False)
