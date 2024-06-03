CREATE TABLE billinginformation (
  BillNumber int NOT NULL,
  IncludedData int NOT NULL,
  DataUsed int NOT NULL,
  BalancedData int NOT NULL,
  TaxDouble int NOT NULL,
  PRIMARY KEY (BillNumber)
);