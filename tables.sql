create schema project
-- جدول کارمند
create table project.Employee (
    Personnel_ID SERIAL PRIMARY KEY,
    Full_Name char(100) not null,
    Hire_Date DATE not null,
    Contact_Number char(15) not null,
	Gender char(50) not null,
    NationalCode char(255) not null
);
-- جدول اعضای خانواده کارمند
create table project.Employee_Family (
    Personnel_ID INT not null,
    NationalCode char(255) not null,
    Name char(50) not null,
    Age INT not null,
    Relation char(50) not null,
    PRIMARY KEY (Personnel_ID, NationalCode),
    FOREIGN KEY (Personnel_ID) REFERENCES project.Employee(Personnel_ID)
);
-- جدول مهارت
create table project.Skill (
    Skill_ID INT PRIMARY KEY,
    Title char(50) not null,
    Skill_Type char(50) not null
);
-- جدول ارتباط مهارت-کارمند
create table project.Employee_Skill (
    Skill_ID INT not null,
    Personnel_ID INT not null,
    PRIMARY KEY (Skill_ID, Personnel_ID),
    FOREIGN KEY (Skill_ID) REFERENCES project.Skill(Skill_ID),
    FOREIGN KEY (Personnel_ID) REFERENCES project.Employee(Personnel_ID)
);
-- جدول مدرک تحصیلی
create table project.Education (
    Education_ID INT PRIMARY KEY,
    Title char(100) not null,
    Year INT not null,
    Major char(100) not null,
	Personnel_ID INT not null,
    Institution_id int not null,
	FOREIGN KEY (Personnel_ID) REFERENCES project.Employee(Personnel_ID),
	FOREIGN KEY (Institution_id) REFERENCES project.Institution(Institution_ID)
);
-- جدول موسسه
create table project.Institution (
    Institution_ID INT not null,
    Name char(100) not null,
    Contact_Number char(15),
    Address char(255),
    PRIMARY KEY (Institution_ID)
);
-- جدول تجربه کاری
create table project.Work_Experience (
    Experience_ID INT PRIMARY KEY,
    Employee_ID INT not null,
    Activity char(255) not null,
    Duration char(50) not null,
    Company char(100) not null,
    Position char(100) not null,
    FOREIGN KEY (Employee_ID) REFERENCES project.Employee(Personnel_ID)
);
-- جدول تراکنش
CREATE TABLE project.Transaction (
    Transaction_ID INT PRIMARY KEY,
    Transaction_Code int not null ,
	FOREIGN KEY (Transaction_Code) REFERENCES project.Salary(Salary_ID)

);

-- جدول حساب بانکی
create table project.Bank_Account (
    Account_ID INT PRIMARY KEY,
	Type_Amount char(50) not null,
    Employee_ID INT not null,
    Account_Number int not null,
    FOREIGN KEY (Employee_ID) REFERENCES project.Employee(Personnel_ID),
    FOREIGN KEY (Account_Number) REFERENCES project.Transaction(Transaction_ID)

);
-- جدول مزایا
CREATE TABLE project.Benefits (
    Benefit_ID INT PRIMARY KEY,
    Overtime DECIMAL(10, 2) NOT NULL,
    Bonus int NOT NULL check(Bonus <10000000),
    Mission_Allowance DECIMAL(10, 2) NOT NULL check(Mission_Allowance <1000000),
	Salary_bill int not null,
	Personnel_ID INT not null,
    FOREIGN KEY (Personnel_ID) REFERENCES project.Employee(Personnel_ID),
    FOREIGN KEY (Salary_bill) REFERENCES project.Salary(Salary_ID)

);


-- جدول ساعت کاری
CREATE TABLE project.Work_Hours (
    Work_Hour_ID INT PRIMARY KEY,
	Manager_ID INT NOT NULL,
    Personnel_ID INT NOT NULL,
    Work_Date DATE NOT NULL,
    Start_Time TIME NOT NULL,
    End_Time TIME NOT NULL,
	Absence char(50) ,
	leavee int check(leavee <40 and leavee >0),
    FOREIGN KEY (Personnel_ID) REFERENCES project.Employee(Personnel_ID),
	FOREIGN KEY (Manager_ID) REFERENCES project.Manager(Manager_ID)

);
-- جدول مدیر
CREATE TABLE project.Manager (
    Manager_ID INT PRIMARY KEY,
    NationalCode char(255) not null,
    ManagementField CHAR(100),
    Name CHAR(100) NOT NULL,
    Contact_Number CHAR(15) NOT NULL
);




-- جدول حقوق
create table project.Salary (
    Salary_ID INT PRIMARY KEY,
    Employee_ID INT,
    Payment_Period char(50),
    FOREIGN KEY (Employee_ID) REFERENCES project.Employee(Personnel_ID)
);
-- جدول کسورات
create table project.Deductions (
    Deduction_ID INT PRIMARY KEY,
    Amount INT,
    Employee_ID INT not null,
	Law_ID INT not null,
	Salary_bill INT not null,
    FOREIGN KEY (Employee_ID) REFERENCES project.Employee(Personnel_ID),
    FOREIGN KEY (Salary_bill) REFERENCES project.Salary(Salary_ID),
    FOREIGN KEY (Law_ID) REFERENCES project.Law(Law_ID)
);
-- جدول مالیات
create table project.Tax (
    Tax_ID INT PRIMARY KEY,
    Tax_Period char(50) not null,
    Tax_Type char(100) not null,
    Tax_Company char(100) not null,
	FOREIGN KEY (Tax_ID) REFERENCES project.Deductions(Deduction_ID)

);
-- جدول بیمه
CREATE TABLE project.Insurance (
    Insurance_ID INT PRIMARY KEY,
    Insurance_Type CHAR(100) NOT NULL default 'village_Insurance',
    Start_Date DATE NOT NULL,
    End_Date DATE,
    Insurance_Company CHAR(100),
    FOREIGN KEY (Insurance_ID) REFERENCES project.Deductions(Deduction_ID)

);
-- جدول بدهی شخصی
create table project.Personal_Section (
    Section_ID INT PRIMARY KEY,
    Section_type char(100),
	FOREIGN KEY (Section_ID) REFERENCES project.Deductions(Deduction_ID)
);
-- جدول قانون
create table project.Law (
    Law_ID INT PRIMARY KEY not null,
    Law_Description char(255),
    Calculation_Method char(100) not null
);
-- جدول قرارداد کار
create table project.Work_Contract (
    Contract_ID INT PRIMARY KEY,
    Employee_ID INT not null,
    Start_Date DATE not null,
    End_Date DATE not null,
    responsible char(100),
    Base_Salary int check(Base_Salary >15000000 and Base_Salary <50000000) not null,
    FOREIGN KEY (Employee_ID) REFERENCES project.Employee(Personnel_ID)
);
-- جدول قراردادی
create table project.Contract (
    Contract_ID INT PRIMARY KEY,
    Contract_Type char(100),
    FOREIGN KEY (Contract_ID) REFERENCES project.Work_Contract(Contract_ID)

);
-- جدول پیمانه ای
create table project.Continuous (
    Continuous_ID INT PRIMARY KEY,
    Continuous_Type char(100),
	FOREIGN KEY (Continuous_ID) REFERENCES project.Work_Contract(Contract_ID)

);