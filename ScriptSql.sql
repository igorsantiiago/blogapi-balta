INSERT INTO [Category] VALUES('Backend', 'backend')
INSERT INTO [Category] VALUES('Frontend', 'frontend')
INSERT INTO [Category] VALUES('Full Stack', 'fullstack')
INSERT INTO [Category] VALUES('Mobile', 'mobile')
GO

INSERT INTO [Tag] VALUES('ASP.NET','aspnet')
INSERT INTO [Tag] VALUES('.NET','dotnet')
INSERT INTO [Tag] VALUES('C#','csharp')
INSERT INTO [Tag] VALUES('Angular','angular')
INSERT INTO [Tag] VALUES('Flutter','flutter')
INSERT INTO [Tag] VALUES('Entity Framework','ef')
INSERT INTO [Tag] VALUES('Java','java')
INSERT INTO [Tag] VALUES('Javascript','js')
GO

INSERT INTO [Role] VALUES('user', 'user')
INSERT INTO [Role] VALUES('author', 'author')
INSERT INTO [Role] VALUES('admin', 'admin')
GO

INSERT INTO [User] VALUES('Peter Parker', 'pparker@balta.io', '1234', 'https://balta.io', 'peter-parker', 'Sou o Spiderman')
INSERT INTO [User] VALUES('Bruce Wayne', 'wayne@balta.io', '1234', 'https://balta.io', 'bruce-wayne', 'Sou o Batman')
INSERT INTO [User] VALUES('Diana Prince', 'diana@balta.io', '1234', 'https://balta.io', 'diana-prince', 'Sou a Mulher Maravilha')
GO

-- POST
INSERT INTO [Post] VALUES('Comecando com C#', 'Neste post vamos comecar com C#', '<h1>Comecando com C#</h1>', 'comecando-com-csharp', GETDATE(), GETDATE(), (SELECT TOP 1 [Id] FROM [Category] WHERE [Slug]='backend'), (SELECT TOP 1 [Id] FROM [User] WHERE [Slug]='peter-parker'))
GO

INSERT INTO [Post] VALUES('Comecando com Angular', 'Neste post vamos comecar com Angular', '<h1>Comecando com Angular</h1>', 'comecando-com-angular', GETDATE(), GETDATE(), (SELECT TOP 1 [Id] FROM [Category] WHERE [Slug]='frontend'), (SELECT TOP 1 [Id] FROM [User] WHERE [Slug]='diana-prince'))
GO

-- Se der erro de indice ao inserir PostTag, remover as chaves

DROP INDEX [IX_PostTag_TagId] ON [PostTag]
GO

ALTER TABLE [PostTag] DROP CONSTRAINT [PK_PostTag]
GO

ALTER TABLE [PostTag] DROP CONSTRAINT [FK_PostTag_TagId]
GO

INSERT INTO [PostTag] VALUES(1, 2)
INSERT INTO [PostTag] VALUES(1, 3)
INSERT INTO [PostTag] VALUES(2, 4)
INSERT INTO [PostTag] VALUES(2, 8)
GO

INSERT INTO [UserRole] VALUES(1, 1)
INSERT INTO [UserRole] VALUES(1, 2)
INSERT INTO [UserRole] VALUES(2, 1)
INSERT INTO [UserRole] VALUES(2, 2)
INSERT INTO [UserRole] VALUES(2, 3)
INSERT INTO [UserRole] VALUES(3, 1)
INSERT INTO [UserRole] VALUES(3, 2)
GO