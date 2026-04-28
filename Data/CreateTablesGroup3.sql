use [MIST353_Group3];

IF (OBJECT_ID('TechSkills') IS NOT NULL)
    DROP TABLE TechSkills;
IF (OBJECT_ID('RequestStatus') IS NOT NULL)
    DROP TABLE RequestStatus;
IF (OBJECT_ID('Request') IS NOT NULL)
    DROP TABLE Request;
IF (OBJECT_ID('MaintenanceTechSkills') IS NOT NULL)
    DROP TABLE MaintenanceTechSkills;
IF (OBJECT_ID('MaintenanceTech') IS NOT NULL)
    DROP TABLE MaintenanceTech;
IF (OBJECT_ID('MaintenanceSupervisor') IS NOT NULL)
    DROP TABLE MaintenanceSupervisor;
IF (OBJECT_ID('Requester') IS NOT NULL)
    DROP TABLE Requester;

go

CREATE TABLE Requester (
    RequesterID INT PRIMARY KEY IDENTITY(1,1),
    RequesterFirstName VARCHAR(100) NOT NULL,
    RequesterLastName VARCHAR(100) NOT NULL,
    RequesterEmail VARCHAR(100),
    RequesterPhone VARCHAR(20)
);

go

CREATE TABLE MaintenanceSupervisor (
    MaintenanceSupervisorID INT PRIMARY KEY IDENTITY(1,1),
    MaintenanceSupervisorFirstName VARCHAR(100) NOT NULL,
    MaintenanceSupervisorLastName VARCHAR(100) NOT NULL,
    MaintenanceSupervisorPhone VARCHAR(20)
);

go

CREATE TABLE MaintenanceTech (
    MaintenanceTechID INT PRIMARY KEY IDENTITY(1,1),
    MaintenanceTechFirstName VARCHAR(100) NOT NULL,
    MaintenanceTechLastName VARCHAR(100) NOT NULL,
    MaintenanceTechEmail VARCHAR(100),
    MaintenanceTechCalendar VARCHAR(255),
    MaintenanceTechCertifications VARCHAR(255),
    MaintenanceTechPerformance DECIMAL(5,2)
);

go

CREATE TABLE MaintenanceTechSkills (
    MaintenanceTechSkillID INT PRIMARY KEY IDENTITY(1,1),
    MaintenanceTechSkillName VARCHAR(100) NOT NULL
);

go

CREATE TABLE TechSkills (
    MaintenanceTechID INT,
    MaintenanceTechSkillID INT,
    PRIMARY KEY (MaintenanceTechID, MaintenanceTechSkillID),
    FOREIGN KEY (MaintenanceTechID) REFERENCES MaintenanceTech(MaintenanceTechID),
    FOREIGN KEY (MaintenanceTechSkillID) REFERENCES MaintenanceTechSkills(MaintenanceTechSkillID)
);

go

CREATE TABLE Request (
    RequestID INT PRIMARY KEY IDENTITY(1,1),
    RequesterID INT NOT NULL,
    MaintenanceSupervisorID INT NULL,
    RequestNotes VARCHAR(500),
    RequestIssue VARCHAR(255),
    MaintenanceSupervisorApproval BIT DEFAULT 0,

    FOREIGN KEY (RequesterID) REFERENCES Requester(RequesterID),
    FOREIGN KEY (MaintenanceSupervisorID) REFERENCES MaintenanceSupervisor(MaintenanceSupervisorID)
);

go

CREATE TABLE RequestStatus (
    RequestStatusID INT PRIMARY KEY IDENTITY(1,1),
    RequestID INT NOT NULL,
    RequestStatus VARCHAR(50),
    RequestDateStarted DATETIME,
    RequestDateCompleted DATETIME,
    MaintenanceTechID INT,

    FOREIGN KEY (RequestID) REFERENCES Request(RequestID),
    FOREIGN KEY (MaintenanceTechID) REFERENCES MaintenanceTech(MaintenanceTechID)
);