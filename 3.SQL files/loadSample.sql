load data infile "D:/database/bigcsvfile/sample.csv" ignore
into table sample
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
ESCAPED BY ''
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(indexnumber,sample_ID,sample_alias,sample_accession,broker_name,center_name,@var1,scientific_name,common_name,anonymized_name,individual_name,description,sra_link,sample_url_link,xref_link,sample_entrez_link,ddbj_link,ena_link,sample_attribute,submission_accession,sradb_updated)
SET taxon_id = nullif(@var1,'')
;