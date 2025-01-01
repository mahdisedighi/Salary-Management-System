-- Mahdi Saremi
CREATE TABLE users
(
    id   INT,
    name VARCHAR(255)
);


-- Mahdi Sedighi

CREATE TABLE personal_dept(
	serial-dept INT PRIMARY KEY NOT NULL,
	type-dept VARCHAR(50) NOT NULL,



	FOREIGN KEY (serial-dept) REFERENCES # (#) ON DELETE CASCADE
);

CREATE TABLE rule(
	serial-dept SERIAL PRIMARY KEY UNIQUE NOT NULL,
	description-rule VARCHAR(250) not null,
	calculate VARCHAR(200) not null

);

CREATE TABLE transaction(
	tracking-code SERIAL PRIMARY KEY UNIQUE NOT NULL,
	bill INT NOT NULL,


	FOREIGN KEY (bill) REFERENCES # (#) ON DELETE CASCADE
);

CREATE TABLE bank_account(
	account-number SERIAL PRIMARY KEY UNIQUE  NOT NULL,
	account-type VARCHAR(40) NOT NULL,
	emp INT NOT NULL ,
	traking-code INT NOT NULL,

	FOREIGN KEY (emp) REFERENCES # (#) ON DELETE CASCADE,
	FOREIGN KEY (traking-code) REFERENCES transaction (tracking-code) ON DELETE CASCADE,
);

CREATE TABLE benefits(
	benefit-id BIGSERIAL PRIMARY KEY NOT NULL UNIQUE,
	covertime VARCHAR(50) NOT NULL,
	reward VARCHAR(50) NOT NULL,
	mission-allowance(50) NOT NULL,

	salary INT NOT NULL,
	FOREIGN KEY (salary) REFERENCES # (#) ON DELETE CASCADE,
);

CREATE TABLE experience(
	experience-id SERIAL PRIMARY KEY UNIQUE NOT NULL,
	activity-duration VARCHAR(50) NOT NULL,
	activity-field VARCHAR(50) NOT NULL,
	company-name VARCHAR(50) NOT NULL,
	position VARCHAR(50) NOT NULL,

	emp INT NOT NULL,
	FOREIGN KEY (emp) REFERENCES # (#) ON DELETE CASCADE,
);

CREATE TABLE employment_contracts (
    contract_id SERIAL PRIMARY KEY NOT NULL UNIQUE,
    start_date DATE NOT NULL,
    end_date DATE,
    base_salary INTEGER NOT NULL,
    position VARCHAR(50) NOT NULL,


	emp INT NOT NULL   ,
	FOREIGN KEY (emp) REFERENCES # (#) ON DELETE CASCADE,

);

CREATE TABLE project_contracts (
    contract_id INT PRIMARY KEY,
    project_type VARCHAR(50) NOT NULL,



    FOREIGN KEY (contract_id) REFERENCES employment_contracts(contract_id) ON DELETE CASCADE
);

CREATE TABLE scale_contracts (
    contract_id INT PRIMARY KEY,
    project_type VARCHAR(50) NOT NULL,


	FOREIGN KEY (contract_id) REFERENCES employment_contracts(contract_id) ON DELETE CASCADE
);

-- Saeed safaee
UPDATE user_profile
SET remaining_courses = remaining_courses + 1;
