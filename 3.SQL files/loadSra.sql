load data infile "D:/database/bigcsvfile/sra.csv" ignore
into table sra
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
ESCAPED BY ''
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(indexnumber,sra_ID,SRR_bamFile,SRX_bamFile,SRX_fastqFTP,@ru_id,run_alias,run_accession,@ru_date,updated_date,spots,bases,run_center,experiment_name,run_url_link,run_entrez_link,run_attribute,@ex_id,experiment_alias,experiment_accession,experiment_title,study_name,sample_name,design_description,library_name,library_strategy,library_source,library_selection,library_layout,library_construction_protocol,adapter_spec,read_spec,platform,instrument_model,instrument_name,platform_parameters,sequence_space,base_caller,quality_scorer,number_of_levels,multiplier,qtype,experiment_url_link,experiment_entrez_link,experiment_attribute,@sam_id,sample_alias,sample_accession,@tax_id,common_name,anonymized_name,individual_name,description,sample_url_link,sample_entrez_link,sample_attribute,@stu_id,study_alias,study_accession,study_title,study_type,study_abstract,center_project_name,study_description,study_url_link,study_entrez_link,study_attribute,related_studies,primary_study,@sub_id,submission_accession,
submission_comment,submission_center,submission_lab,@sub_date,sradb_updated)
SET run_date = nullif(@ru_date,''), 
taxon_id = nullif(@tax_id,''),
run_ID = nullif(@ru_id,''),
study_ID = nullif(@stu_id,''),
sample_id = nullif(@sam_id,''),
experiment_id = nullif(@ex_id,''),
submission_ID = nullif(@sub_id,''),
submission_date = nullif(@sub_date,'')
;