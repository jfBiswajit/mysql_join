-- Create tables
create table emps (
  emp_id int not null auto_increment,
  emp_name varchar(255) not null,
  hire_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  dept_id int not null,
  primary key (emp_id),
  foreign key (dept_id) references depts (dept_id)
);

create table depts(
  dept_id int not null,
  dept_name varchar(255) not null,
  primary key (dept_id)
);

-- Insert value in both tables
insert into depts values (1, 'Engineer');
insert into depts values (2, 'Medical');
insert into depts values (3, 'Pharmacy');

insert into emps (emp_name, dept_id) values ('Biswajit', 1);
insert into emps (emp_name, dept_id) values ('Shreya', 2);
insert into emps (emp_name, dept_id) values ('Meghan', 3);
insert into emps (emp_name, dept_id) values ('Emma', 2);
insert into emps (emp_name, dept_id) values ('Sandra', 1);
insert into emps (emp_name, dept_id) values ('Mayaku', 1);
insert into emps (emp_name, dept_id) values ('Koimu', 1);
insert into emps (emp_name) values ('Elita');
insert into emps (emp_name) values ('Inna');
insert into emps (emp_name) values ('Olivia');

-- Inner join
select * from emps INNER JOIN depts ON depts.dept_id = emps.dept_id;


-- Left join
select * from emps LEFT JOIN depts ON depts.dept_id = emps.dept_id;

-- Rigth join
select * from emps RIGHT JOIN depts ON depts.dept_id = emps.dept_id;