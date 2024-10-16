-- Create the RoomApplicationDetail table
CREATE TABLE RoomApplicationDetail (
    AvailableFacility VARCHAR(100),
    NumberOfPeople INT,
    StartDate DATE,
    EndDate DATE,
    StartTime TIME,
    EndTime TIME,
    ReasonToUseFacility VARCHAR(255)
);

-- Insert 10 records into the RoomApplicationDetail table
INSERT INTO RoomApplicationDetail (AvailableFacility, NumberOfPeople, StartDate, EndDate, StartTime, EndTime, ReasonToUseFacility) VALUES
('Conference Room A', 20, '2024-10-05', '2024-10-05', '09:00', '12:00', 'Team Meeting'),
('Training Room B', 15, '2024-10-06', '2024-10-06', '14:00', '17:00', 'Employee Training'),
('Seminar Hall C', 50, '2024-10-07', '2024-10-07', '10:00', '13:00', 'Product Launch Event'),
('Meeting Room D', 8, '2024-10-08', '2024-10-08', '11:00', '13:00', 'Department Discussion'),
('Conference Room A', 25, '2024-10-09', '2024-10-09', '10:00', '14:00', 'Annual Budget Review'),
('Seminar Hall C', 45, '2024-10-10', '2024-10-10', '09:00', '12:30', 'Company Town Hall'),
('Training Room B', 12, '2024-10-11', '2024-10-11', '13:00', '16:00', 'Workshop on New Software'),
('Conference Room A', 18, '2024-10-12', '2024-10-12', '09:00', '12:00', 'Client Presentation'),
('Meeting Room D', 10, '2024-10-13', '2024-10-13', '15:00', '17:00', 'Project Planning'),
('Seminar Hall C', 100, '2024-10-14', '2024-10-14', '09:30', '12:30', 'Corporate Seminar');


-- Create the StaffDetail table
CREATE TABLE StaffDetail (
    StaffFullName VARCHAR(100),
    StaffIDNumber VARCHAR(20),
    StaffRegNumber VARCHAR(20),
    StaffPhoneNumber VARCHAR(15),
    StaffDepartment VARCHAR(50)
);

-- Insert 10 records into the StaffDetail table
INSERT INTO StaffDetail (StaffFullName, StaffIDNumber, StaffRegNumber, StaffPhoneNumber, StaffDepartment) VALUES
('John Doe', 'S00123456789', 'REG001', '012-3456789', 'Finance'),
('Jane Smith', 'S00987654321', 'REG002', '012-9876543', 'Human Resources'),
('Michael Tan', 'S00112233445', 'REG003', '011-2233445', 'IT Department'),
('Alicia Wong', 'S00109876543', 'REG004', '012-0987654', 'Marketing'),
('Peter Lim', 'S00156789012', 'REG005', '013-5678901', 'Operations'),
('Linda Ng', 'S00234567890', 'REG006', '010-2345678', 'Customer Service'),
('Henry Lee', 'S00943216587', 'REG007', '012-4321658', 'Legal'),
('Sophia Tan', 'S00165748392', 'REG008', '014-6574839', 'Finance'),
('Daniel Chan', 'S00567891234', 'REG009', '013-6789123', 'IT Department'),
('Rachel Lim', 'S00345678901', 'REG010', '011-3456789', 'Sales');
