show databases ;
use library;
show tables ;
create table student(
    studentCode int not null,
    studentName varchar(50)not null ,
    address varchar(50) not null ,
    email varchar(50)not null ,
    primary key (studentCode)
);
create table book(
    bookCode int not null ,
    bookName varchar(50) not null ,
    title varchar(50) not null ,
    studentCode int  ,
    bookType varchar(50),
    primary key (bookCode),
    foreign key (studentCode) references student(studentCode),
    foreign key (bookType) references category(bookType)
);
create table category(
    bookType varchar(50) not null ,
    textDescription text,
    primary key (bookType)
);
create table borrowTicket(
    borrowCode int not null ,
    borrowDate DATE not null ,
    returnDate DATE not null ,
    studentNumber int not null ,
    primary key (borrowCode),
    foreign key (studentNumber) references student(studentCode)
);
