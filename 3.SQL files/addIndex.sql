create index experiment_id on experiment(experiment_id);
create index experiment_accession on experiment(experiment_accession);
create index experiment_submission_accession on experiment(submission_accession);
create fulltext index experiment_title_description on experiment(title, design_description,library_name);

create index run_id on run(run_ID);
create index run_accession on run(run_accession);
create index run_experiment_accession on run(experiment_accession);
create index run_submission_accession on run(submission_accession);

create index sample_ID on sample(sample_ID);
create index sample_accession on sample(sample_accession);
create index sample_submission_accession on sample(submission_accession);


create index study_ID on study(study_ID);
create index study_accession on study(study_accession);
create fulltext index study_title_abstract_description_centerprojectname on study(study_title,study_abstract,study_description,center_project_name);

create index submission_ID on submission(submission_ID);
create index submission_accession on submission(submission_accession);

create index sra_id on sra(sra_id);
create index sra_run_accession on sra(run_accession);
create index sra_experiment_accession on sra(experiment_accession); 
create index sra_sample_accession on sra(sample_accession);
create index sra_submission_accession on sra(submission_accession);
create index sra_study_accession on sra(study_accession);