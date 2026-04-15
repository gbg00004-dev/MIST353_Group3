use [MIST353_Group3];

IF (OBJECT_ID('TechSkills') IS NOT NULL)
    DROP TABLE TechSkills;
IF (OBJECT_ID('RequestStatus') IS NOT NULL)
    DROP TABLE RequestStatus;
IF (OBJECT_ID('Request') IS NOT NULL)
    DROP TABLE Request;
IF (OBJECT_ID('MTSkills') IS NOT NULL)
    DROP TABLE MTSkills;
IF (OBJECT_ID('MaintenanceTech') IS NOT NULL)
    DROP TABLE MaintenanceTech;
IF (OBJECT_ID('MaintenanceSupervisor') IS NOT NULL)
    DROP TABLE MaintenanceSupervisor;
IF (OBJECT_ID('Requester') IS NOT NULL)
    DROP TABLE Requester;

go

CREATE TABLE Requester (
    RID INT PRIMARY KEY IDENTITY(1,1),
    RFName VARCHAR(100) NOT NULL,
    RFEmail VARCHAR(100),
    RFPhone VARCHAR(20)
);

go

CREATE TABLE MaintenanceSupervisor (
    MSID INT PRIMARY KEY IDENTITY(1,1),
    MSFName VARCHAR(100) NOT NULL,
    MSPhone VARCHAR(20)
);

go

CREATE TABLE MaintenanceTech (
    MTID INT PRIMARY KEY IDENTITY(1,1),
    MTFName VARCHAR(100) NOT NULL,
    MTEmail VARCHAR(100),
    MTCalendar VARCHAR(255),
    MTCertifications VARCHAR(255),
    MTPerformance DECIMAL(5,2)
);

go

CREATE TABLE MTSkills (
    SkillID INT PRIMARY KEY IDENTITY(1,1),
    SkillName VARCHAR(100) NOT NULL
);

go

CREATE TABLE TechSkills (
    MTID INT,
    SkillID INT,
    PRIMARY KEY (MTID, SkillID),
    FOREIGN KEY (MTID) REFERENCES MaintenanceTech(MTID),
    FOREIGN KEY (SkillID) REFERENCES MTSkills(SkillID)
);

go

CREATE TABLE Request (
    RQID INT PRIMARY KEY IDENTITY(1,1),
    RID INT NOT NULL,
    MSID INT NULL,
    RQNotes VARCHAR(500),
    RQIssue VARCHAR(255),
    MSApproval BIT DEFAULT 0,

    FOREIGN KEY (RID) REFERENCES Requester(RID),
    FOREIGN KEY (MSID) REFERENCES MaintenanceSupervisor(MSID)
);

go

CREATE TABLE RequestStatus (
    StatusID INT PRIMARY KEY IDENTITY(1,1),
    RQID INT NOT NULL,
    Status VARCHAR(50),
    DateStarted DATETIME,
    DateCompleted DATETIME,
    MTAssigned INT,

    FOREIGN KEY (RQID) REFERENCES Request(RQID),
    FOREIGN KEY (MTAssigned) REFERENCES MaintenanceTech(MTID)
);