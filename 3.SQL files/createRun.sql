use cs503;
drop table if exists run;

CREATE TABLE run( 
indexnumber INT,
run_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
bamFile TEXT,
run_alias TEXT,
run_accession VARCHAR(15),
broker_name TEXT,
instrument_name TEXT,
run_date DATETIME,
run_file TEXT,
run_center TEXT,
total_data_blocks TEXT,
experiment_accession VARCHAR(15),
experiment_name TEXT,
sra_link TEXT,
run_url_link TEXT,
xref_link TEXT,
run_entrez_link TEXT,
ddbj_link TEXT,
ena_link TEXT,
run_attribute TEXT,
submission_accession VARCHAR(15),
sradb_updated DATETIME,

unique key(run_accession)
);