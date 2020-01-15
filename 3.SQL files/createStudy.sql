use cs503;
drop table if exists study;

CREATE TABLE study( 
indexnumber INT,
study_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
study_alias TEXT,
study_accession VARCHAR(15),
study_title TEXT,	
study_type TEXT,
study_abstract TEXT,
broker_name TEXT,
center_name TEXT,
center_project_name TEXT,
study_description TEXT,
related_studies TEXT,
primary_study TEXT,
sra_link TEXT,
study_url_link TEXT,
xref_link TEXT,
study_entrez_link TEXT,
ddbj_link TEXT,
ena_link TEXT,
study_attribute TEXT,
submission_accession VARCHAR(15),
sradb_updated DATETIME,

unique key(study_accession)
);