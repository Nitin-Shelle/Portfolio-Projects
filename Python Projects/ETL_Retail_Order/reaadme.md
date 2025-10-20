# End-to-End Retail Orders Data Pipeline & Analysis

## 🎯 Project Overview

This project implements a complete **End-to-End (E2E) Data Pipeline** to ingest raw retail sales data, perform extensive cleaning and transformation using **Python/Pandas**, and load the final clean dataset into a **SQL database** for complex business intelligence (BI) analysis.

The goal is to demonstrate proficiency in building robust ETL workflows and leveraging SQL for deep, multi-level business insights.

## 🛠️ Technologies Used

| Category | Tools |
| :--- | :--- |
| **Data Ingestion** | Python (`Kaggle API`, `zipfile`) |
| **Transformation (ETL)** | Python (`Pandas`, `NumPy`) |
| **Data Loading (ETL)** | Python (`SQLAlchemy`) |
| **Analysis** | SQL Server / PostgreSQL / SQLite (Specify your database) |

## 🚀 Key Features & Skills Demonstrated

The project script (`etl_script.py` or `.ipynb`) covers the full data lifecycle:

* **Programmatic Extraction:** Utilized the **Kaggle API** to securely and reliably download raw zipped data directly from the source.
* **Data Cleaning & Integrity:** Standardized all column headers by converting names to **snake\_case** and **lowercase**.
* **Feature Engineering:** Calculated critical business metrics, including **`discount`**, **`sale\_price`**, and **`profit`**, directly within Pandas.
* **Data Type Management:** Converted the raw date column to the proper **datetime** object for accurate time-series analysis.
* **Database Loading:** Used the **`SQLAlchemy`** library to establish a database connection and seamlessly loaded the cleaned DataFrame into a structured SQL table using `to\_sql()`.

## 🧠 Challenges Faced and Solutions Implemented

This section highlights the problem-solving required to build the pipeline:

| Challenge | Solution Implemented |
| :--- | :--- |
| **Handling Non-Standard Null Values** | The raw data contained inconsistent strings (e.g., `'Not Available'`) that needed to be treated as `NULL`. **Solution:** Passed a list of these specific strings to the **`na\_values`** parameter in `pd.read_csv()` to ensure they were correctly recognized as `NaN` by Pandas. |
| **Integrating Python with SQL** | A robust, repeatable method was needed to load the cleaned Pandas DataFrame into a structured SQL table while maintaining data types. **Solution:** Used the **`SQLAlchemy`** library to establish a persistent connection and utilized the **`to\_sql()`** function to automatically map the DataFrame structure to the SQL schema. |
| **Complex Business Analysis** | Answering multi-level questions like "Top 5 selling products *per region*" is not possible with basic aggregation. **Solution:** Wrote efficient SQL queries using **Window Functions** (`ROW_NUMBER()`) with the **`PARTITION BY`** clause to rank products within each regional group. |

## ⚙️ How to Run the Project

1.  **Dependencies:** Ensure Python 3, Pandas, NumPy, and SQLAlchemy are installed: `pip install pandas numpy sqlalchemy kaggle`
2.  **Kaggle Setup:** Generate your Kaggle API key and place the required `kaggle.json` file in your home directory's `.kaggle` folder.
3.  **Execute ETL:** Run the Python script to download, clean, and load the data into your specified SQL database.
4.  **Analyze:** Connect to your database tool and execute the analytical queries found in the `sql_queries.sql` file.