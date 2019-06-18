﻿CREATE PROCEDURE [dbo].[ManageAuthor]
	@AuthorID INT,
	@AuthorName nvarchar(50),
	@DateOfBirth datetime,
	@Place nvarchar(500),
	@Operation nvarchar(50)
AS

IF @Operation = 'ADD'

	INSERT INTO Author([Name],[DateOfBirth],[Place]) VALUES (@AuthorName,@DateOfBirth,@Place)

ELSE IF @Operation = 'UPDATE'

	UPDATE Author SET [Name] = @AuthorName, DateOfBirth  = @DateOfBirth, Place = @Place
	where Id = @AuthorID

ELSE

	DELETE FROM Author WHERE Id = @AuthorID
	
RETURN 0
