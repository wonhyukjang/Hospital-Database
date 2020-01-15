load data infile "D:/database/bigcsvfile/submission.csv"
into table submission
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
ESCAPED BY ''
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(indexnumber,submission_ID,submission_alias,submission_accession,submission_comment,files,broker_name,center_name,lab_name,@var1,sra_link,submission_url_link,xref_link,submission_entrez_link,ddbj_link,ena_link,submission_attribute,sradb_updated)
SET submission_date = nullif(@var1,'')
;