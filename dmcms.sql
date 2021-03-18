DROP TABLE IF EXISTS `process`;
create table process(
process_name varchar(20),
process_id smallint,
constraint pk_process PRIMARY KEY (process_id) 
);

DROP TABLE IF EXISTS `input`;
create table input(
input_id smallint,
process_id smallint,
input_name varchar(30),
constraint pk_input PRIMARY KEY (input_id),
constraint fk_process1 FOREIGN KEY (process_id) REFERENCES process(process_id)
);

DROP TABLE IF EXISTS `cases`;
create table cases(
case_id smallint,
process_id smallint,
constraint pk_cases PRIMARY KEY (case_id),
constraint fk_process2 FOREIGN KEY (process_id) REFERENCES process(process_id)
);

DROP TABLE IF EXISTS `data`;
create table data(
input_id smallint,
value varchar(250),
case_id smallint,
constraint fk_input FOREIGN KEY (input_id) REFERENCES input(input_id),
constraint fk_case FOREIGN KEY (case_id) REFERENCES cases(case_id)
);


ALTER table data 
ADD constraint pk_data 
PRIMARY KEY (case_id,input_id);
