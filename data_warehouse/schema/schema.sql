-- Product Dimension Table
CREATE TABLE ProductDim (
    ProductID INTEGER PRIMARY KEY,
    ProductName TEXT,
    Category TEXT,
    SubCategory TEXT,
    StockCode TEXT
);

-- Customer Dimension Table
CREATE TABLE CustomerDim (
    CustomerID INTEGER PRIMARY KEY,
    CustomerName TEXT,
    Country TEXT,
    AgeGroup TEXT
);

-- Time Dimension Table
CREATE TABLE TimeDim (
    TimeID INTEGER PRIMARY KEY,
    Date TEXT,
    Month INTEGER,
    Quarter TEXT,
    Year INTEGER
);

-- Fact Table: SalesFact
CREATE TABLE SalesFact (
    SalesID INTEGER PRIMARY KEY,
    TimeID INTEGER,
    ProductID INTEGER,
    CustomerID INTEGER,
    Quantity INTEGER,
    UnitPrice REAL,
    TotalSales REAL,
    FOREIGN KEY (TimeID) REFERENCES TimeDim(TimeID),
    FOREIGN KEY (ProductID) REFERENCES ProductDim(ProductID),
    FOREIGN KEY (CustomerID) REFERENCES CustomerDim(CustomerID)
);