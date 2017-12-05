
/* Inserted */
CREATE TABLE Countries (
	CountryID int NOT NULL PRIMARY KEY,
	Name varchar(100) NOT NULL UNIQUE
);

/* Inserted */
CREATE TABLE Regions (
	RegionID int NOT NULL PRIMARY KEY,
	Name varchar(200) NOT NULL UNIQUE,
	CountryID int FOREIGN KEY REFERENCES Countries(CountryID) NOT NULL,
	Rank int NOT NULL
);

/* Inserted */
CREATE TABLE Locations (
	LocationID int NOT NULL PRIMARY KEY,
	Name varchar(100) NOT NULL UNIQUE,
	Position geography,
	/* Google Maps use 3857 */
	Description varchar(500) UNIQUE,
	RegionID int FOREIGN KEY REFERENCES Regions(RegionID) NOT NULL,
	Rank int NOT NULL
);

/* Inserted */
CREATE TABLE Events (
	EventID int NOT NULL PRIMARY KEY,
	Name varchar(150) NOT NULL UNIQUE,
	Description varchar(500) UNIQUE,
	Beginning datetime NOT NULL,
	Ending datetime NOT NULL,
	LocationID int FOREIGN KEY REFERENCES Locations(LocationID) NOT NULL,
	Rank int NOT NULL
);

/* Inserted */
CREATE TABLE Opinions (
	OpinionID int NOT NULL PRIMARY KEY,
	Text varchar(1000) NOT NULL UNIQUE,
	Created datetime NOT NULL,
	AdventurerID int FOREIGN KEY REFERENCES Adventurers(AdventurerID),
	EventID int FOREIGN KEY REFERENCES Events(EventID),
	RegionID int FOREIGN KEY REFERENCES Regions(RegionID),
	LocationID int FOREIGN KEY REFERENCES Locations(LocationID),
	WriterID int FOREIGN KEY REFERENCES Adventurers(AdventurerID) NOT NULL
);

/* Inserted */
CREATE TABLE ContentItems (
	ContentItemID int NOT NULL PRIMARY KEY,
	Link varchar(150) NOT NULL,
	CreatedAt datetime NOT NULL,
	AdventurerID int FOREIGN KEY REFERENCES Adventurers(AdventurerID),
	LocationID int FOREIGN KEY REFERENCES Locations(LocationID),
	EventID int FOREIGN KEY REFERENCES Events(EventID)
);

/* Inserted */
CREATE TABLE Activities (
	ActivityID int NOT NULL PRIMARY KEY,
	Name varchar(70) NOT NULL UNIQUE
);

/* Inserted */
CREATE TABLE Adventurers (
	AdventurerID int NOT NULL PRIMARY KEY,
	Name varchar(70), 
	Surname varchar(70),
	AdventurerName varchar(50) NOT NULL UNIQUE,
	Password varchar(60) NOT NULL,
	InstagramLink varchar(150),
	FacebookLink varchar(150),
	YouTubeLink varchar(150),
	Male bit DEFAULT 1,
	BirthDate datetime,
	AvatarLink varchar(150),
	Bio varchar(1000) UNIQUE,
	Commercial bit NOT NULL DEFAULT 0,
	Rank int NOT NULL
);

/* Inserted */
CREATE TABLE Visits (
	VisitID int NOT NULL PRIMARY KEY,
	Beginning datetime,
	Ending datetime,
	Status varchar(50) NOT NULL,
	AdventurerID int FOREIGN KEY REFERENCES Adventurers(AdventurerID) NOT NULL
);

/* Inserted */
CREATE TABLE SimpleMessages (
	SimpleMessageID int NOT NULL PRIMARY KEY,
	Text varchar(1000) NOT NULL,
	CreatedAt datetime NOT NULL,
	ReadedAt datetime NOT NULL,
	SenderID int FOREIGN KEY REFERENCES Adventurers(AdventurerID) NOT NULL,
	RecieverID int FOREIGN KEY REFERENCES Adventurers(AdventurerID) NOT NULL
);

/* Inserted */
CREATE TABLE CommunityMessages (
	CommunityMessageID int NOT NULL PRIMARY KEY,
	Text varchar(1000) NOT NULL,
	CreatedAt datetime NOT NULL,
	ReadedAt datetime NOT NULL,
	SenderID int FOREIGN KEY REFERENCES Adventurers(AdventurerID) NOT NULL,
	CommunityID int FOREIGN KEY REFERENCES Communities(CommunityID) NOT NULL
);

/* Inserted */
CREATE TABLE Communities (
	CommunityID int NOT NULL PRIMARY KEY,
	Name varchar(100) NOT NULL UNIQUE,
	Description varchar(500),
	AdminID int FOREIGN KEY REFERENCES Adventurers(AdventurerID) NOT NULL,
	CreatedAt datetime NOT NULL,
	Rank int NOT NULL
);

CREATE TABLE Followers (
	FollowerID int NOT NULL PRIMARY KEY,
	AdvanturerID int FOREIGN KEY REFERENCES Adventurers(AdventurerID) NOT NULL
);

CREATE TABLE GroupsActivities (
	GroupActivityID int NOT NULL PRIMARY KEY,
	GroupID int FOREIGN KEY REFERENCES Groups(GroupID) NOT NULL,
	ActivityID int FOREIGN KEY REFERENCES Activities(ActivityID) NOT NULL
);

CREATE TABLE AdvanturersActivities (
	AdvanturerActivityID int NOT NULL PRIMARY KEY,
	AdvanturerID int FOREIGN KEY REFERENCES Adventurers(AdventurerID) NOT NULL,
	ActivityID int FOREIGN KEY REFERENCES Activities(AdventurerID) NOT NULL
);

CREATE TABLE LocationsActivities (
	LocationActivityID int NOT NULL PRIMARY KEY,
	LocationID int FOREIGN KEY REFERENCES Locations(LocationID) NOT NULL,
	ActivityID int FOREIGN KEY REFERENCES Activities(ActivityID) NOT NULL
);

CREATE TABLE EventsActivitis (
	EventActivityID int NOT NULL PRIMARY KEY,
	EventID int FOREIGN KEY REFERENCES Events(EventID) NOT NULL,
	ActivityID int FOREIGN KEY REFERENCES Activities(ActivityID) NOT NULL
);
