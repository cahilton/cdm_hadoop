sqoop import -m 1 --connect jdbc:postgresql://laertes.ohdsi.org:5432/vocabularyv5 --username=username -P --table attribute_definition --hive-import
sqoop import -m 4 --connect jdbc:postgresql://laertes.ohdsi.org:5432/vocabularyv5 --username=username -P --table care_site --split-by care_site_id --hive-import
sqoop import -m 4 --connect jdbc:postgresql://laertes.ohdsi.org:5432/vocabularyv5 --username=username -P --table cohort --split-by cohort_definition_id --hive-import
