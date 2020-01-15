use cs503;
drop table if exists submission;

CREATE TABLE submission( 
indexnumber INT,
submission_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
submission_alias TEXT,
submission_accession VARCHAR(15),
submission_comment TEXT,
files TEXT,
broker_name TEXT,
center_name TEXT,
lab_name TEXT,
submission_date DATE,
sra_link TEXT,
submission_url_link TEXT,
xref_link TEXT,
submission_entrez_link TEXT,
ddbj_link TEXT,
ena_link TEXT,
submission_attribute TEXT,
sradb_updated DATETIME,

unique key(submission_accession)
);