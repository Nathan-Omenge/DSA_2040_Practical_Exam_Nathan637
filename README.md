# DSA 2040 Practical Exam - Data Warehousing and Data Mining

**Student:** Nathan Omenge  
**Student ID:** 637  
**Course:** DSA 2040 FS 2025  


## Overview

This repository contains a complete implementation of all practical exam requirements for DSA 2040. The project demonstrates comprehensive skills in data warehousing design, ETL processes, OLAP operations, and data mining techniques including preprocessing, clustering, classification, and association rule mining.

## Project Structure

```
DSA_2040_Practical_Exam_Nathan637/
├── README.md
├── data_warehouse/
│   ├── schema/
│   │   ├── schema.sql
│   │   └── star_diagrams/
│   │       └── star_schem_diagram.png
│   ├── etl/
│   │   ├── etl_retail.ipynb
│   │   └── retail_dw.db
│   ├── olap/
│   │   ├── olap.ipynb
│   │   ├── retail_dw.db
│   │   └── uk_monthly_sales.png
│   └── README.md
├── data_mining/
│   ├── preprocessing/
│   │   ├── preprocessing_iris.ipynb
│   │   ├── iris_pairplot_fixed.png
│   │   ├── iris_correlation_heatmap.png
│   │   └── iris_boxplots_original_scale.png
│   ├── clustering/
│   │   ├── clustering_iris.ipynb
│   │   └── clustering_results.png
│   └── classification_association/
│       ├── mining_iris_basket.ipynb
│       ├── decision_tree_iris.png
│       └── feature_importance.png
└── exam_venv/
```

## Datasets Used

### Data Warehousing
- **Dataset Choice**: Online Retail dataset from UCI ML Repository 
- **Features**: InvoiceNo, StockCode, Description, Quantity, UnitPrice, InvoiceDate, CustomerID, Country
- **Processing**: ETL pipeline with data validation, transformation, and loading into star schema

### Data Mining
- **Iris Dataset**: Used scikit-learn built-in dataset (`load_iris()`)
- **Features**: sepal length, sepal width, petal length, petal width
- **Target**: 3 species (setosa, versicolor, virginica)
- **Synthetic Transaction Data**: 50 transactions, 20 grocery items for association rule mining

## Implementation Details

### Section 1: Data Warehousing (50/50 Marks)

#### Task 1: Data Warehouse Design (15 Marks)
- **Star Schema**: Designed with 1 fact table and 4 dimension tables
- **Fact Table**: SalesFact (sales_amount, quantity, foreign keys)
- **Dimensions**: CustomerDim, ProductDim, TimeDim, LocationDim
- **Rationale**: Star schema chosen for simplicity, faster queries, and better performance
- **Files**: `schema.sql`, star schema diagram

#### Task 2: ETL Process Implementation (20 Marks)
- **Extract**: Processed retail data (UCI dataset or generated synthetic data)
- **Transform**: Calculated TotalSales, handled outliers, created dimension extracts
- **Load**: Created SQLite database with fact and dimension tables
- **Features**: Full ETL function with logging, error handling, data validation
- **Files**: `etl_retail.ipynb`, `retail_dw.db`

#### Task 3: OLAP Queries and Analysis (15 Marks)
- **Roll-up**: Total sales by country and quarter
- **Drill-down**: UK sales by month with trend analysis
- **Slice**: Electronics category sales analysis
- **Visualization**: UK monthly sales trend chart
- **Analysis**: 300-word business insights report
- **Files**: `olap.ipynb`, `uk_monthly_sales.png`

### Section 2: Data Mining (50/50 Marks)

#### Task 1: Data Preprocessing and Exploration (15 Marks)
- **Loading**: Used scikit-learn Iris dataset
- **Preprocessing**: Min-Max scaling, missing value checks, encoding
- **Exploration**: Summary statistics, pairplot, correlation heatmap, outlier detection
- **Split Function**: 80/20 train/test split with stratification
- **Files**: `preprocessing_iris.ipynb`, visualization images

#### Task 2: Clustering (15 Marks)
- **Algorithm**: K-means clustering with k=3
- **Evaluation**: Adjusted Rand Index (ARI) for cluster quality
- **Experimentation**: Tested k=2,3,4 with elbow method analysis
- **Visualization**: Cluster scatter plots with petal dimensions
- **Analysis**: 200-word report on cluster quality and applications
- **Files**: `clustering_iris.ipynb`, `clustering_results.png`

#### Task 3: Classification and Association Rule Mining (20 Marks)

**Part A: Classification (10 Marks)**
- **Decision Tree**: Implemented with scikit-learn, optimized hyperparameters
- **Metrics**: Accuracy (96.67%), Precision, Recall, F1-Score
- **Comparison**: Decision Tree vs KNN (k=5) - both achieved 96.67% accuracy
- **Visualization**: Complete decision tree plot with feature importance

**Part B: Association Rule Mining (10 Marks)**
- **Data Generation**: 50 synthetic transactions with 20 grocery items
- **Algorithm**: Apriori algorithm using mlxtend library
- **Parameters**: min_support=0.1, min_confidence=0.2
- **Results**: 60 association rules identified
- **Analysis**: Retail implications of strongest rule (eggs, butter → milk)
- **Files**: `mining_iris_basket.ipynb`

## Key Results

### Data Warehousing
- Successfully designed and implemented a complete data warehouse
- ETL process handled 1000+ transactions with full data validation
- OLAP analysis revealed seasonal sales patterns and regional trends

### Data Mining
- **Classification**: 96.67% accuracy on Iris dataset with both Decision Tree and KNN
- **Clustering**: ARI score of 0.73 showing good cluster separation
- **Association Rules**: Identified 60 meaningful shopping patterns for retail optimization


## How to Run

### Prerequisites
```bash
python -m venv exam_venv
source exam_venv/bin/activate  # On Windows: exam_venv\Scripts\activate
pip install pandas numpy scikit-learn matplotlib seaborn mlxtend jupyter sqlite3
```

### Execution Order
1. **Data Warehousing**:
   ```bash
   jupyter notebook data_warehouse/etl/etl_retail.ipynb
   jupyter notebook data_warehouse/olap/olap.ipynb
   ```

2. **Data Mining**:
   ```bash
   jupyter notebook data_mining/preprocessing/preprocessing_iris.ipynb
   jupyter notebook data_mining/clustering/clustering_iris.ipynb
   jupyter notebook data_mining/classification_association/mining_iris_basket.ipynb
   ```

### Database Files
- All `.db` files are included and functional
- Can be opened with any SQLite browser for inspection



