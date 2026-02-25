### BigQuery Setup
Raw monthly CSV files are imported into BigQuery as separate tables in the `cyclistic_raw` dataset using schema autodetection. Some station/coordinate fields contain null values, which appear to be expected in the source data.
