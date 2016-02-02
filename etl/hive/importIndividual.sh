sqoop import -m 2 --connect jdbc:postgresql://laertes.ohdsi.org:5432/vocabularyv5 --username=charity -P --table attribute_definition --split-by attribute_definition_id--hive-import --hive-table cdmv5.attribute_definition
sqoop import -m 2 --connect jdbc:postgresql://laertes.ohdsi.org:5432/vocabularyv5 --username=username -P --table care_site --split-by care_site_id --hive-import -hive-table cdmv5.care_site
sqoop import -m 2 --connect jdbc:postgresql://laertes.ohdsi.org:5432/vocabularyv5 --username=charity -P --table cohort --split-by cohort_definition_id --hive-import -hive-table cdmv5.cohort
sqoop import -m 2 --connect jdbc:postgresql://laertes.ohdsi.org:5432/vocabularyv5 --username=charity -P --table cohort_attribute --split-by cohort_definition_id --hive-import -hive-table cdmv5.cohort_attribute
sqoop import -m 2 --connect jdbc:postgresql://laertes.ohdsi.org:5432/vocabularyv5 --username=charity -P --table cohort_definition --split-by cohort_definition_id --hive-import -hive-table cdmv5.cohort_definition
sqoop import -m 2 --connect jdbc:postgresql://laertes.ohdsi.org:5432/vocabularyv5 --username=charity -P --table concept --split-by concept_id --hive-import -hive-table cdmv5.concept
sqoop import -m 1 --connect jdbc:postgresql://laertes.ohdsi.org:5432/vocabularyv5 --username=charity -P --table concept_ancestor --split-by ancestor_concept_id --hive-import -hive-table cdmv5.concept_ancestor
sqoop import -m 2 --connect jdbc:postgresql://laertes.ohdsi.org:5432/vocabularyv5 --username=charity -P --table concept_class --split-by concept_class_id --hive-import -hive-table cdmv5.concept_class
sqoop import -m 1 --connect jdbc:postgresql://laertes.ohdsi.org:5432/vocabularyv5 --username=charity -P --table concept_relationship  --hive-import -hive-table cdmv5.concept_relationship

