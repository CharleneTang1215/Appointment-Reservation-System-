CREATE TABLE Caregivers (
    Username varchar(255),
    Salt BINARY(16),
    Hash BINARY(16),
    PRIMARY KEY (Username)
);

CREATE TABLE Availabilities (
    Time date,
    Username varchar(255) REFERENCES Caregivers,
    PRIMARY KEY (Time, Username)
);

CREATE TABLE Vaccines (
    Name varchar(255),
    Doses int,
    PRIMARY KEY (Name)
);

CREATE TABLE Patients (
	Username varchar(225),
	Salt BINARY(16),
    Hash BINARY(16),
    PRIMARY KEY (Username)
);

CREATE TABLE Appointments(
    AppointmentID varchar(1000),
    P_Username varchar(225) REFERENCES Patients,
    C_Username varchar(255) REFERENCES Caregivers,
    V_name varchar(255) REFERENCES Vaccines,
    Time date,
    PRIMARY KEY (AppointmentID)
);