import pandas as pd
from unicodedata import normalize

# Read the entire webpaage from fda.gov
tables = pd.read_html('https://www.fda.gov/medical-devices/mandatory-reporting-requirements-manufacturers-importers-and-device-user-facilities/about-manufacturer-and-user-facility-device-experience-maude')

# The read should return one table; use that as the dataframe
df = tables[0]

# Drop the first row which is only used for formatting on the web page
df.drop(index=df.index[0],
        axis=0,
        inplace=True)

# Rename the columns of the table to include 'Description' and remove tabs
df.columns = [
    'File Name',
    'Compressed Size in Bytes',
    'Uncompressed Size in Bytes',
    'Total Records',
    'Description'
]

# Print the table as markdown
print(df.to_markdown())
