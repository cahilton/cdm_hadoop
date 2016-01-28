sqoop import-all-tables -m 1 --connect jdbc:postgresql://laertes.ohdsi.org:5432/vocabularyv5 --username=username -P --hive-import     --hive-database cdmv5 -- --schema=unrestricted
