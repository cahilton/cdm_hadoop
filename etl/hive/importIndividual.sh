
sqoop import -m 1 --connect jdbc:postgresql://laertes.ohdsi.org:5432/vocabularyv5 --username=username -P --table person --hive-import     --hive-table cdmv5.person

