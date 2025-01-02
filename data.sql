


INSERT INTO project.Employee (Full_Name, Hire_Date, Contact_Number, Address, Gender)
VALUES 
('Ali Rezaei', '2021-01-15', '09121234567', 'Tehran, Iran', 'Male'),
('Sara Ahmadi', '2020-05-20', '09127654321', 'Mashhad, Iran', 'Female'),
('Reza Jafari', '2019-11-01', '09123456789', 'Isfahan, Iran', 'Male');

INSERT INTO project.Employee_Contact (Personnel_ID, Contact_Number)
VALUES 
(1, '09121234567'),
(2, '09127654321'),
(3, '09123456789');

INSERT INTO project.Employee_Family (Personnel_ID, Name, Last_Name, Date_of_Birth, Relation)
VALUES 
(1, 'Maryam', 'Rezaei', '1995-08-10', 'Spouse'),
(2, 'Ali', 'Ahmadi', '2015-03-25', 'Child'),
(3, 'Mahdi', 'Jafari', '2012-06-15', 'Child');

INSERT INTO project.Skill (Skill_ID, Title, Skill_Type)
VALUES 
(1, 'Programming', 'Technical'),
(2, 'Communication', 'Soft Skill'),
(3, 'Project Management', 'Management');

INSERT INTO project.Employee_Skill (Skill_ID, Personnel_ID)
VALUES 
(1, 1),
(2, 2),
(3, 3);

INSERT INTO project.Education (Education_ID, Degree, Major, Graduation_Date, Institution_id, Personnel_ID)
VALUES 
(1, 'Bachelor', 'Computer Science', '2018-06-30', 1, 1),
(2, 'Master', 'Business Administration', '2019-07-15', 2, 2),
(3, 'PhD', 'Engineering', '2020-09-01', 3, 3);

INSERT INTO project.Institution (Institution_ID, Name, Contact_Number, Address)
VALUES 
(1, 'Tehran University', '02111112222', 'Tehran, Iran'),
(2, 'Sharif University', '02133334444', 'Tehran, Iran'),
(3, 'Isfahan University', '03155556666', 'Isfahan, Iran');

INSERT INTO project.Work_Experience (Experience_ID, Employee_ID, Activity, Duration, Company, Position)
VALUES 
(1, 1, 'Software Development', '2 years', 'Tech Corp', 'Developer'),
(2, 2, 'Marketing', '3 years', 'Marketing Co.', 'Manager'),
(3, 3, 'Engineering', '5 years', 'Engineering Inc.', 'Engineer');

INSERT INTO project.Salary (Salary_ID, Employee_ID, Payment_Period)
VALUES 
(1, 1, 'Monthly'),
(2, 2, 'Monthly'),
(3, 3, 'Monthly');
INSERT INTO project.Transaction (Transaction_ID, Transaction_Code)
VALUES 
(1, 1), (2, 2), (3, 3);

INSERT INTO project.Bank_Account (Account_ID, Type_Amount, Employee_ID, Account_Number) VALUES 
(1, 'Savings', 1, 123456), (2, 'Checking', 2, 654321), (3, 'Savings', 3, 789123);

INSERT INTO project.Benefits (Benefit_ID, Overtime, Bonus, Mission_Allowance, Salary_bill, Personnel_ID)
VALUES 
(1, 10.5, 500000, 200000, 1, 1),
(2, 15.0, 300000, 150000, 2, 2),
(3, 8.0, 400000, 250000, 3, 3);

INSERT INTO project.Work_Hours (Work_Hour_ID, Manager_ID, Personnel_ID, Work_Date, Start_Time, End_Time, Absence, leavee)
VALUES 
(1, 1, 1, '2021-12-01', '09:00:00', '17:00:00', 'None', 0),
(2, 1, 2, '2021-12-01', '08:00:00', '16:00:00', 'Sick', 5),
(3, 1, 3, '2021-12-01', '10:00:00', '18:00:00', 'None', 0);

INSERT INTO project.Manager (Manager_ID, Personnel_ID, managment_feild, Full_Name, Contact_Number)
VALUES 
(1, '1001', 'IT Management', 'Hasan Mohammadi', '09131112222'),
(2, '1002', 'HR Management', 'Fatemeh Karimi', '09132223333'),
(3, '1003', 'Finance Management', 'Mohammad Hosseini', '09133334444');


INSERT INTO project.Law (Law_ID, Law_Description, Calculation_Method)
VALUES 
(1, 'Income Tax Law', 'Percentage'),
(2, 'Labor Law', 'Fixed Amount'),
(3, 'Health Insurance Law', 'Percentage');

INSERT INTO project.Deductions (Deduction_ID, Amount, Employee_ID, Law_ID, Salary_bill)
VALUES 
(1, 100000, 1, 1, 1),
(2, 150000, 2, 2, 2),
(3, 120000, 3, 3, 3);

INSERT INTO project.Tax (Tax_ID, Tax_Period, Tax_Type, Tax_Company)
VALUES 
(1, '2021-Q4', 'Income Tax', 'Tax Dept.'),
(2, '2021-Q4', 'VAT', 'Tax Dept.'),
(3, '2021-Q4', 'Corporate Tax', 'Tax Dept.');

INSERT INTO project.Insurance (Insurance_ID, Insurance_Type, Start_Date, End_Date, Insurance_Company)
VALUES 
(1, 'Health Insurance', '2021-01-01', '2021-12-31', 'Insurance Co.'),
(2, 'Life Insurance', '2021-01-01', '2021-12-31', 'Insurance Co.'),
(3, 'Car Insurance', '2021-01-01', '2021-12-31', 'Insurance Co.');

INSERT INTO project.Personal_Section (Section_ID, Section_type)
VALUES 
(1, 'Loan'),
(2, 'Advance Salary'),
(3, 'Other');

INSERT INTO project.Work_Contract (Contract_ID, Employee_ID, Start_Date, End_Date, responsible, Base_Salary)
VALUES 
(1, 1, '2021-01-01', '2022-01-01', 'Manager 1', 20000000),
(2, 2, '2021-02-01', '2022-02-01', 'Manager 2', 25000000),
(3, 3, '2021-03-01', '2022-03-01', 'Manager 3', 30000000);

INSERT INTO project.Contract (Contract_ID, Contract_Type)
VALUES 
(1, 'Full-Time'),
(2, 'Part-Time'),
(3, 'Contractual');

INSERT INTO project.Continuous (Continuous_ID, Continuous_Type)
VALUES 
(1, 'Project-Based'),
(2, 'Time-Based'),
(3, 'Output-Based');
