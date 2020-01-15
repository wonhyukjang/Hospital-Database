use cs503;
drop table if exists sample;

CREATE TABLE sample( 
indexnumber INT,
sample_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
sample_alias TEXT,
sample_accession VARCHAR(15),
broker_name TEXT,
center_name TEXT,
taxon_id INT, 
scientific_name TEXT,
common_name TEXT,
anonymized_name TEXT,
individual_name TEXT,
description TEXT,
sra_link TEXT,
sample_url_link TEXT,
xref_link TEXT,
sample_entrez_link TEXT,
ddbj_link TEXT,
ena_link TEXT,
sample_attribute TEXT,
submission_accession VARCHAR(15),
sradb_updated DATETIME,

unique key(sample_accession)
);