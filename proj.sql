CREATE TABLE Student (
    Student_id char(9) NOT NULL PRIMARY KEY,
    Name varchar(20) NOT NULL,
    Mess_id char(5) FOREIGN KEY REFERENCES Mess(Mess_id),
    Password varchar(64) NOT NULL CHECK DATALENGHT(Password) >= 8
);

CREATE TABLE Mess (
    Mess_id char(5) PRIMARY KEY,
    Block char(1) NOT NULL,
    Name varchar(10) NOT NULL
);

CREATE TABLE Admin User (
    Admin_id int PRIMARY KEY,
    Username varchar(10) NOT NULL,
    Password varchar(64) NOT NULL CHECK DATALENGHT(Password)>=8
);

CREATE TABLE Food (
    Food_id char(4) PRIMARY KEY,
    Name varchar(10) NOT NULL,
    Cost int NOT NULL
);

CREATE TABLE Order (
    Order_id int PRIMARY KEY,
    Food_id char(4) FOREIGN KEY REFERENCES Food(Food_id),
    Time time(0) NOT NULL
);

CREATE TABLE Balance (
    Student_id char(9) FOREIGN KEY REFERENCES Student(Student_id),
    NewBalance int NOT NULL,
    OldBalance int NOT NULL
);

