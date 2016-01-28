### 1. SQL Drivers
- Make sure sqoop has access to your SQL driver. 
-- See more info here: http://www.cloudera.com/documentation/archive/cdh/4-x/4-7-1/CDH4-Installation-Guide/cdh4ig_topic_13_7.html

### 2. Create database in Hive
- Open `hive`  
- Execute `create database cdmv5;`

### 3a. Option 1: Import All Tables
- See importAll.sh  
- Update -m to represent the number of mappers you wish sqoop to use
- Update your JDBC Url and username (You will be prompted for your password)

### 3b. Option 2: Import Tables 1 by 1
- See importIndividual.sh
- Update `person` with whichever tables you wish to import
- Update -m to represent the number of mappers you wish sqoop to use
- Update your JDBC Url and username (You will be prompted for your password)

### 4. Load complete
- Once sqoop has finished executing the MapReduce your job, your data should be available for querying in Hive, e.g.  
```
hive> select * from cdmv5.concept limit 5;
OK
45978822	Calpol Six Plus 250mg/5ml oral suspension sugar free (McNeil Products Ltd)	Drug	SNOMED	Pharma/Biol Product	null	618711000001109	2004-04-022099-12-31	null
45978823	Volsaid Retard 75 tablets (Chiesi Ltd)	Drug	SNOMED	Pharma/Biol Product	null	814411000001103	1970-01-01	2099-12-31	null
45978824	Mefenamic acid 500mg tablets (Actavis UK Ltd)	Drug	SNOMED	Pharma/Biol Product	null	774611000001107	1970-01-01	2099-12-31	null
45978825	Indometacin 25mg capsules (A A H Pharmaceuticals Ltd)	Drug	SNOMED	Pharma/Biol Product	null	746311000001109	1970-01-01	2099-12-31	null
45978826	Mefenamic acid 500mg tablets (Teva UK Ltd)	Drug	SNOMED	Pharma/Biol Product	null	655611000001101	1970-01-01	2099-12-31	null
Time taken: 0.938 seconds, Fetched: 5 row(s)
```


#### Notes
- See https://sqoop.apache.org/docs/1.4.1-incubating/SqoopUserGuide.html for additional sqoop parameters and options
