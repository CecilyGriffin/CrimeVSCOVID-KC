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

select covid.covid19_cases, crime.offense, crime.zip_code
from crime
full outer join covid on 
covid.zip_code=crime.zip_code;
