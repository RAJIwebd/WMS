CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone_number VARCHAR(15),
    department VARCHAR(50),
    position VARCHAR(100),
    hire_date DATE NOT NULL,
    manager_id INT REFERENCES employees(employee_id),
    status VARCHAR(20) CHECK (status IN ('active', 'terminated'))
);
SELECT * FROM employees LIMIT 10;
CREATE TABLE departments (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL,
    manager_id INT REFERENCES employees(employee_id)
);
CREATE TABLE attendance (
    attendance_id SERIAL PRIMARY KEY,
    employee_id INT REFERENCES employees(employee_id),
    check_in_time TIMESTAMP,
    check_out_time TIMESTAMP,
    date DATE NOT NULL,
    status VARCHAR(10)
);


