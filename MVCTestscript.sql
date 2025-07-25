USE [MVCTest]
GO
/****** Object:  Table [dbo].[DesignationGrade]    Script Date: 12/07/2025 6:45:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DesignationGrade](
	[Id] [int] NOT NULL,
	[GradeName] [nvarchar](100) NULL,
	[DesignationIdRef] [int] NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 12/07/2025 6:45:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](100) NOT NULL,
	[LastName] [nvarchar](100) NULL,
	[EmailAddress] [nvarchar](100) NOT NULL,
	[PhoneNumber] [bigint] NULL,
	[DesignationIdRef] [int] NULL,
	[GradeIdRef] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeDesignation]    Script Date: 12/07/2025 6:45:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeDesignation](
	[Id] [int] NOT NULL,
	[DesignationName] [nvarchar](100) NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DesignationGrade] ([Id], [GradeName], [DesignationIdRef], [IsActive]) VALUES (1, N'A1', 1, 1)
INSERT [dbo].[DesignationGrade] ([Id], [GradeName], [DesignationIdRef], [IsActive]) VALUES (2, N'A2', 1, 1)
INSERT [dbo].[DesignationGrade] ([Id], [GradeName], [DesignationIdRef], [IsActive]) VALUES (3, N'A3', 1, 1)
INSERT [dbo].[DesignationGrade] ([Id], [GradeName], [DesignationIdRef], [IsActive]) VALUES (4, N'B1', 2, 1)
INSERT [dbo].[DesignationGrade] ([Id], [GradeName], [DesignationIdRef], [IsActive]) VALUES (5, N'B2', 2, 1)
INSERT [dbo].[DesignationGrade] ([Id], [GradeName], [DesignationIdRef], [IsActive]) VALUES (6, N'B3', 3, 0)
INSERT [dbo].[DesignationGrade] ([Id], [GradeName], [DesignationIdRef], [IsActive]) VALUES (7, N'B4', 3, 1)
INSERT [dbo].[DesignationGrade] ([Id], [GradeName], [DesignationIdRef], [IsActive]) VALUES (8, N'B5', 4, 1)
INSERT [dbo].[DesignationGrade] ([Id], [GradeName], [DesignationIdRef], [IsActive]) VALUES (9, N'C1', 5, 0)
INSERT [dbo].[DesignationGrade] ([Id], [GradeName], [DesignationIdRef], [IsActive]) VALUES (10, N'C2', 5, 1)
INSERT [dbo].[DesignationGrade] ([Id], [GradeName], [DesignationIdRef], [IsActive]) VALUES (11, N'C3', 6, 1)
INSERT [dbo].[DesignationGrade] ([Id], [GradeName], [DesignationIdRef], [IsActive]) VALUES (12, N'D1', 7, 1)
INSERT [dbo].[DesignationGrade] ([Id], [GradeName], [DesignationIdRef], [IsActive]) VALUES (13, N'D2', 7, 0)
INSERT [dbo].[DesignationGrade] ([Id], [GradeName], [DesignationIdRef], [IsActive]) VALUES (14, N'E1', 8, 1)
INSERT [dbo].[DesignationGrade] ([Id], [GradeName], [DesignationIdRef], [IsActive]) VALUES (15, N'E2', 8, 0)
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [EmailAddress], [PhoneNumber], [DesignationIdRef], [GradeIdRef]) VALUES (1, N'CHETAN', N'Koli', N'ckoli1175@gmail.com', 8830801404, 1, 6)
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [EmailAddress], [PhoneNumber], [DesignationIdRef], [GradeIdRef]) VALUES (2, N'Akash', N'Koli', N'chetan.koli@gmail.com', 9876543210, 3, 1)
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [EmailAddress], [PhoneNumber], [DesignationIdRef], [GradeIdRef]) VALUES (3, N'Sandip', N'Koli', N'sandip.koli@gmail.com', 9876543211, 2, 4)
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [EmailAddress], [PhoneNumber], [DesignationIdRef], [GradeIdRef]) VALUES (4, N'Vaibhav', N'Redekar', N'vaibhav.redekar@gmail.com', 9876543212, 3, 7)
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [EmailAddress], [PhoneNumber], [DesignationIdRef], [GradeIdRef]) VALUES (5, N'Sushant', N'Sawant', N'sushant.sawant@gmail.com', 9876543213, 4, 8)
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [EmailAddress], [PhoneNumber], [DesignationIdRef], [GradeIdRef]) VALUES (6, N'Anisha', N'Patil', N'anisha.patil@gmail.com', 9876543214, 5, 10)
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [EmailAddress], [PhoneNumber], [DesignationIdRef], [GradeIdRef]) VALUES (7, N'Namrata', N'Warke', N'namrata.warke@gmail.com', 9876543215, 7, 12)
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [EmailAddress], [PhoneNumber], [DesignationIdRef], [GradeIdRef]) VALUES (9, N'Vishal', N'Chauhan', N'vishal.chauhan@gmail.com', 9876543217, 2, 5)
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [EmailAddress], [PhoneNumber], [DesignationIdRef], [GradeIdRef]) VALUES (11, N'Sandip', N'Patil', N'san1@gmail.com', 9863524565, 3, 7)
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
INSERT [dbo].[EmployeeDesignation] ([Id], [DesignationName], [IsActive]) VALUES (1, N'Jr. Software Engineer', 1)
INSERT [dbo].[EmployeeDesignation] ([Id], [DesignationName], [IsActive]) VALUES (2, N'Software Engineer', 1)
INSERT [dbo].[EmployeeDesignation] ([Id], [DesignationName], [IsActive]) VALUES (3, N'Senior Software Engineer', 1)
INSERT [dbo].[EmployeeDesignation] ([Id], [DesignationName], [IsActive]) VALUES (4, N'Team Leader', 1)
INSERT [dbo].[EmployeeDesignation] ([Id], [DesignationName], [IsActive]) VALUES (5, N'Project Manager', 1)
INSERT [dbo].[EmployeeDesignation] ([Id], [DesignationName], [IsActive]) VALUES (6, N'Senior Project Manager', 0)
INSERT [dbo].[EmployeeDesignation] ([Id], [DesignationName], [IsActive]) VALUES (7, N'Tester', 1)
INSERT [dbo].[EmployeeDesignation] ([Id], [DesignationName], [IsActive]) VALUES (8, N'SEO', 0)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Employee__49A14740BB97DB11]    Script Date: 12/07/2025 6:45:04 PM ******/
ALTER TABLE [dbo].[Employee] ADD UNIQUE NONCLUSTERED 
(
	[EmailAddress] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DesignationGrade]  WITH CHECK ADD FOREIGN KEY([DesignationIdRef])
REFERENCES [dbo].[EmployeeDesignation] ([Id])
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD FOREIGN KEY([DesignationIdRef])
REFERENCES [dbo].[EmployeeDesignation] ([Id])
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD FOREIGN KEY([GradeIdRef])
REFERENCES [dbo].[DesignationGrade] ([Id])
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD CHECK  ((len(CONVERT([varchar],[PhoneNumber]))=(10)))
GO
/****** Object:  StoredProcedure [dbo].[SPMVCTask]    Script Date: 12/07/2025 6:45:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[SPMVCTask](
    @Flag  nvarchar(50) = null,
    @Id INT = NULL,
    @FirstName NVARCHAR(100) = NULL,
    @LastName NVARCHAR(100) = NULL,
    @Email NVARCHAR(100) = NULL,
    @Phone BIGINT = NULL,
    @DesigId INT = NULL,
    @GradeId INT = NULL

)

AS

BEGIN

if(@Flag = 'GetAllEmployee')
BEGIN
SELECT 
    e.Id,
    e.FirstName,
    e.LastName,
    e.EmailAddress,
    e.PhoneNumber,
    ed.DesignationName AS Designation,
    dg.GradeName AS Grade
FROM 
    Employee e
INNER JOIN EmployeeDesignation ed ON e.DesignationIdRef = ed.Id
INNER JOIN DesignationGrade dg ON e.GradeIdRef = dg.Id;
END

if(@Flag = 'AddEmployee')
BEGIN
INSERT INTO Employee  VALUES (@FirstName, @LastName, @Email, @Phone, @DesigId, @GradeId)
END

if(@Flag = 'GetDetailsOfEmployee')
BEGIN
select * from Employee where id = @Id
END

if(@Flag = 'UpdateEmpoyee')
BEGIN
UPDATE Employee SET FirstName = @FirstName, LastName = @LastName, EmailAddress = @Email, PhoneNumber = @Phone WHERE Id = @Id
END

if(@Flag = 'GetDesignation')
BEGIN
SELECT id,DesignationName from EmployeeDesignation 
END

if(@Flag = 'GetGradeByDesignation')
BEGIN
SELECT Id, GradeName FROM DesignationGrade WHERE IsActive = 1 AND DesignationIdRef = @DesigId
END


if(@Flag = 'DeleteEmpoyee')
BEGIN
DELETE FROM Employee WHERE Id = @Id
END

END
GO
