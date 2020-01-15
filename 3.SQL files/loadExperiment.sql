load data infile "D:/database/bigcsvfile/experiment.csv" ignore
into table experiment
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
ESCAPED BY ''
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(indexnumber,experiment_ID,bamFile,fastqFTP,experiment_alias,experiment_accession,broker_name,center_name,title,study_name,study_accession,design_description,sample_name,sample_accession,sample_member,library_name,library_strategy,library_source,library_selection,library_layout,targeted_loci,library_construction_protocol,@var1,adapter_spec,read_spec,platform,instrument_model,platform_parameters,sequence_space,base_caller,quality_scorer,number_of_levels,multiplier,qtype,sra_link,experiment_url_link,xref_link,experiment_entrez_link,ddbj_link,ena_link,experiment_attribute,submission_accession,sradb_updated )
SET spot_length = nullif(@var1,'')
;