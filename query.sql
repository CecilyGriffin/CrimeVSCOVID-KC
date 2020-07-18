CREATE TABLE COVID (
  id INT PRIMARY KEY,
  Zip_Code INT,
  COVID19_Cases VARCHAR,
  Crude_Rate_Per_Hundred_Thousand VARCHAR
);

CREATE TABLE Crime (
  id INT PRIMARY KEY,
  Offense VARCHAR,
  Zip_Code INT,
  Gender VARCHAR,
  Age INT
);
