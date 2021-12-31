-- SIMPLE CRUD GH TEST: TODO LIST
-- CREATE SCHEMA

CREATE DATABASE TodoList; 

USE TodoList; 
GO 

CREATE TABLE Tasks (
	[Task_ID] int,
	[Description] varchar(225), 
	Done bit,  
);


