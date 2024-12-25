-- Database: ims_project

-- --------------------------------------------------------

-- Table structure for table categories

CREATE TABLE categories (
  CategoryID SERIAL PRIMARY KEY,
  CategoryName VARCHAR(100) NOT NULL
);

-- --------------------------------------------------------

-- Table structure for table inventorytransactions

CREATE TABLE inventorytransactions (
  TransactionID SERIAL PRIMARY KEY,
  ProductID INT,
  TransactionDate DATE,
  TransactionType VARCHAR(50),
  Quantity INT,
  Remarks VARCHAR(255)
);

-- --------------------------------------------------------

-- Table structure for table products

CREATE TABLE products (
  ProductID SERIAL PRIMARY KEY,
  ProductName VARCHAR(100) NOT NULL,
  CategoryID INT,
  SupplierID INT,
  UnitPrice DECIMAL(10,2),
  UnitsInStock INT
);

-- --------------------------------------------------------

-- Table structure for table suppliers

CREATE TABLE suppliers (
  SupplierID SERIAL PRIMARY KEY,
  SupplierName VARCHAR(100) NOT NULL,
  ContactName VARCHAR(100),
  Phone VARCHAR(20)
);

-- --------------------------------------------------------

-- Indexes for dumped tables

-- Indexes for table categories



-- Indexes for table inventorytransactions



-- Indexes for table products

CREATE INDEX idx_category_id ON products (CategoryID);
CREATE INDEX idx_supplier_id ON products (SupplierID);

-- Indexes for table suppliers



-- Constraints for dumped tables

-- Constraints for table inventorytransactions

ALTER TABLE inventorytransactions
  ADD CONSTRAINT fk_product_id FOREIGN KEY (ProductID) REFERENCES products (ProductID);

-- Constraints for table products

ALTER TABLE products
  ADD CONSTRAINT fk_category_id FOREIGN KEY (CategoryID) REFERENCES categories (CategoryID),
  ADD CONSTRAINT fk_supplier_id FOREIGN KEY (SupplierID) REFERENCES suppliers (SupplierID);

