-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2018-05-03 03:32:05.693

-- tables
-- Table: BacsiPS05268
CREATE TABLE BacsiPS05268 (
    mabs int  NOT NULL,
    hoten nvarchar(100)  NOT NULL,
    diachi nvarchar(150)  NOT NULL,
    CONSTRAINT BacsiPS05268_pk PRIMARY KEY  (mabs)
);

-- Table: benhnhanPS05268
CREATE TABLE benhnhanPS05268 (
    mabenhnhan int  NOT NULL,
    hoten nvarchar(100)  NOT NULL,
    phai nvarchar(20)  NOT NULL,
    ngaysinh date  NOT NULL,
    diachi nvarchar(150)  NOT NULL,
    CONSTRAINT benhnhanPS05268_pk PRIMARY KEY  (mabenhnhan)
);

-- Table: phieukhamPS05268
CREATE TABLE phieukhamPS05268 (
    maphieu int  NOT NULL,
    mabenhnhan int  NOT NULL,
    chuandoan nvarchar(150)  NOT NULL,
    chiphi int  NOT NULL,
    bacsidieutri int  NOT NULL,
    CONSTRAINT phieukhamPS05268_pk PRIMARY KEY  (maphieu)
);

-- foreign keys
-- Reference: phieukham_Bacsi (table: phieukhamPS05268)
ALTER TABLE phieukhamPS05268 ADD CONSTRAINT phieukham_Bacsi
    FOREIGN KEY (bacsidieutri)
    REFERENCES BacsiPS05268 (mabs);

-- Reference: phieukham_benhnhan (table: phieukhamPS05268)
ALTER TABLE phieukhamPS05268 ADD CONSTRAINT phieukham_benhnhan
    FOREIGN KEY (mabenhnhan)
    REFERENCES benhnhanPS05268 (mabenhnhan);

-- End of file.

