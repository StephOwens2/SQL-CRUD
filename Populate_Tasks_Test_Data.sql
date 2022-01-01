--Few rows of test data

USE TodoList; 
GO 

exec dbo.create_task 'Create database', 1; 
exec dbo.create_task 'Create table', 1; 
exec dbo.create_task 'Create CRUD sprocs', 1; 
exec dbo.create_task 'Enter test data', 1; 
exec dbo.create_task 'The same thing we do every night, Pinky: Try to take over the world!', 0; 
exec dbo.create_task 'Push to GitHub', 1; 

SELECT TOP(1000) * 
FROM Tasks;
