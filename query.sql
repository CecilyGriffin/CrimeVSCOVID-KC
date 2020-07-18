CREATE TABLE COVID (
  id INT PRIMARY KEY,
  Zip_Code VARCHAR,
  COVID19_Cases VARCHAR,
  Crude_Rate_Per_Hundred_Thousand VARCHAR
);

CREATE TABLE Crime (
  id INT PRIMARY KEY,
  Offense VARCHAR,
  Zip_Code VARCHAR,
  Gender VARCHAR,
  Age INT
);
