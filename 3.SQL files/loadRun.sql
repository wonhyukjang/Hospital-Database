load data infile "D:/database/bigcsvfile/run.csv"
into table run
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
ESCAPED BY ''
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(indexnumber,run_ID,bamFile,run_alias,run_accession,broker_name,instrument_name,@var1,run_file,run_center,total_data_blocks,experiment_accession,experiment_name,sra_link,run_url_link,xref_link,run_entrez_link,ddbj_link,ena_link,run_attribute,submission_accession,sradb_updated)
SET run_date = nullif(@var1,'')
;