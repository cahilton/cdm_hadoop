# 1. SQL Drivers
Make sure sqoop has access to your SQL driver. See more info here: http://www.cloudera.com/documentation/archive/cdh/4-x/4-7-1/CDH4-Installation-Guide/cdh4ig_topic_13_7.html

# 2. Create database in Hive
Open `hive`  
Excecute `create database cdmv5;`

# 3a. Option 1: Import All Tables
## See importAll.sh  
### Update -m to represent the number of mappers you wish sqoop to use
### Update your JDBC Url and username (You will be prompted for your password)

# 3b. Option 2: Import Tables 1 by 1
