USE [GlobalWarming]
GO
/****** Object:  Table [dbo].[tbl_LoginMaster]    Script Date: 10/02/2009 15:40:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_LoginMaster](
	[UserId] [int] IDENTITY(1001,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[GM_NGO_Id] [int] NULL,
	[Status] [varchar](50) NULL,
	[Role] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_UserLogin] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_NGOMaster]    Script Date: 10/02/2009 15:40:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_NGOMaster](
	[NGOId] [int] IDENTITY(900601,1) NOT NULL,
	[FName] [varchar](50) NULL,
	[MName] [varchar](50) NULL,
	[LName] [varchar](50) NULL,
	[DOB] [datetime] NULL,
	[DOR] [datetime] NULL,
	[Address] [varchar](500) NULL,
	[EmailId] [varchar](50) NULL,
	[PhoneNo] [varchar](50) NULL,
	[Qualification] [varchar](50) NULL,
	[Photo] [varbinary](max) NULL,
	[ImageFile] [varchar](50) NULL,
	[Working] [varchar](500) NULL,
 CONSTRAINT [PK_tbl_NGOMaster] PRIMARY KEY CLUSTERED 
(
	[NGOId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_ScheduleDetails]    Script Date: 10/02/2009 15:40:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_ScheduleDetails](
	[ScheduleId] [int] IDENTITY(1002,1) NOT NULL,
	[Topic] [varchar](200) NULL,
	[ArrangedDate] [datetime] NULL,
	[Duration] [varchar](100) NULL,
	[Description] [varchar](2000) NULL,
	[Contents] [varbinary](max) NULL,
	[FileName] [varchar](50) NULL,
	[AnnouncedDate] [datetime] NULL,
	[ConductedBoard] [varchar](2000) NULL,
	[Name] [varchar](200) NULL,
	[Address] [varchar](500) NULL,
	[Designation] [varchar](1000) NULL,
 CONSTRAINT [PK_tbl_ScheduleDetails] PRIMARY KEY CLUSTERED 
(
	[ScheduleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_NewsTypes]    Script Date: 10/02/2009 15:40:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_NewsTypes](
	[NewsTypeId] [varchar](50) NOT NULL,
	[TypeName] [varchar](100) NULL,
	[Description] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_NewsTypes] PRIMARY KEY CLUSTERED 
(
	[NewsTypeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_ToxicSubstancesTypes]    Script Date: 10/02/2009 15:40:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_ToxicSubstancesTypes](
	[ToxicTypeId] [varchar](50) NOT NULL,
	[ToxicType] [varchar](100) NULL,
	[Description] [varchar](100) NULL,
 CONSTRAINT [PK_tbl_ToxicTypes] PRIMARY KEY CLUSTERED 
(
	[ToxicTypeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_NewsLetters]    Script Date: 10/02/2009 15:40:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_NewsLetters](
	[NewsLetterId] [varchar](50) NOT NULL,
	[Title] [varchar](100) NULL,
	[Topic] [varchar](2500) NULL,
	[Venue] [varchar](1000) NULL,
	[Conclusion] [varchar](5000) NULL,
	[NewsImage] [varbinary](max) NULL,
	[FileName] [varchar](50) NULL,
	[PostedDate] [datetime] NULL,
	[Month] [varchar](50) NULL,
	[Year] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_NewsLetters] PRIMARY KEY CLUSTERED 
(
	[NewsLetterId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_StateWisePopulation]    Script Date: 10/02/2009 15:40:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_StateWisePopulation](
	[StateId] [int] IDENTITY(1,1) NOT NULL,
	[StateName] [varchar](100) NULL,
	[Abbr] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
	[Capital] [varchar](50) NULL,
	[Area] [varchar](50) NULL,
	[Cf1981] [varchar](50) NULL,
	[Cf1991] [varchar](50) NULL,
	[Cf2001] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_StateWisePopulation] PRIMARY KEY CLUSTERED 
(
	[StateId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_EmailDetails]    Script Date: 10/02/2009 15:40:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_EmailDetails](
	[EmailId] [int] NULL,
	[EmailReciptedId] [int] NULL,
	[EmailReadStatus] [bit] NULL,
	[EmailDeleteStatus] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_MemberOnLine]    Script Date: 10/02/2009 15:40:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_MemberOnLine](
	[MemberId] [int] NULL,
	[Status] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_NGOOnLine]    Script Date: 10/02/2009 15:40:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_NGOOnLine](
	[NGOId] [int] NULL,
	[Status] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[Sp_ShowEmaildetailsOutbox]    Script Date: 10/02/2009 15:40:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[Sp_ShowEmaildetailsOutbox](@Emailid int)
as 
begin
update tbl_emailmaster set emailreadstatus =1 where emailid=@Emailid
select * from tbl_emailmaster where emailid=@Emailid
end
GO
/****** Object:  Table [dbo].[tbl_EmailMaster]    Script Date: 10/02/2009 15:40:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_EmailMaster](
	[EmailId] [int] IDENTITY(7200,1) NOT NULL,
	[EmailSenderId] [int] NULL,
	[EmailDate] [datetime] NULL,
	[EmailSubjectText] [varchar](50) NULL,
	[EmailBodyMsg] [varchar](500) NULL,
	[EmailAttachFileContent] [varbinary](max) NULL,
	[EmailAttachFileName] [varchar](50) NULL,
	[EmailDeleteStatus] [bit] NULL,
	[EmailReadStatus] [bit] NULL,
 CONSTRAINT [PK_tbl_EmailMaster] PRIMARY KEY CLUSTERED 
(
	[EmailId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[Sp_outboxdetails]    Script Date: 10/02/2009 15:40:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Sp_outboxdetails](@senderid int)      
as       
begin      
      
select  e.username,f.EMailReadStatus,f.EmailDeletestatus,f.Emailid,convert( varchar (50), f.Emaildate,103)as Date ,f.EmailSubjectText,f.EMailBodyMsg      
 from tbl_LoginMaster e inner join tbl_EmailDetails d on d.EmailReciptedId=e.GM_NGO_Id      
inner join tbl_emailmaster f on f.emailid=d.emailid where f.emailsenderid=@senderid  
end
GO
/****** Object:  Table [dbo].[tbl_MemberMaster]    Script Date: 10/02/2009 15:40:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_MemberMaster](
	[MemberId] [int] IDENTITY(500601,1) NOT NULL,
	[FName] [varchar](50) NULL,
	[MName] [varchar](50) NULL,
	[LName] [varchar](50) NULL,
	[DOB] [datetime] NULL,
	[DOR] [datetime] NULL,
	[Address] [varchar](500) NULL,
	[EmailId] [varchar](50) NULL,
	[PhoneNo] [varchar](50) NULL,
	[Qualification] [varchar](50) NULL,
	[Photo] [varbinary](max) NULL,
	[ImageFile] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_MemberMaster] PRIMARY KEY CLUSTERED 
(
	[MemberId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_SendNewsLetters]    Script Date: 10/02/2009 15:40:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_SendNewsLetters](
	[UserId] [int] NULL,
	[NewsLetterId] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_NewsDetails]    Script Date: 10/02/2009 15:40:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_NewsDetails](
	[NewsId] [int] IDENTITY(900,1) NOT NULL,
	[Topic] [varchar](250) NULL,
	[NewsContent] [varchar](5000) NULL,
	[NewsLink] [varchar](50) NULL,
	[NewsImage] [varbinary](max) NULL,
	[FileName] [varchar](50) NULL,
	[PostedDate] [datetime] NULL,
	[NewsTypeId] [varchar](50) NULL,
	[RelatedLinks] [varchar](300) NULL,
 CONSTRAINT [PK_tbl_NewsDetails] PRIMARY KEY CLUSTERED 
(
	[NewsId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_ToxicSubstanceDetails]    Script Date: 10/02/2009 15:40:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_ToxicSubstanceDetails](
	[ToxicId] [int] IDENTITY(301,1) NOT NULL,
	[NameOfSubstance] [varchar](100) NULL,
	[Quantity] [varchar](50) NULL,
	[CAS] [varchar](50) NULL,
	[ToxicTypeId] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_ToxicSubstanceDetails] PRIMARY KEY CLUSTERED 
(
	[ToxicId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_CityWisePopulation]    Script Date: 10/02/2009 15:40:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_CityWisePopulation](
	[CityId] [int] IDENTITY(2001,1) NOT NULL,
	[CityName] [varchar](50) NULL,
	[CF1991] [varchar](50) NULL,
	[CF2001] [varchar](50) NULL,
	[StateId] [int] NULL,
 CONSTRAINT [PK_tbl_CityWisePopulation] PRIMARY KEY CLUSTERED 
(
	[CityId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[sp_ChangePassWord]    Script Date: 10/02/2009 15:40:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_ChangePassWord](
@UserName varchar(50),
@OldPassWord varchar(50),
@NewPassWord varchar(50),
@Result int output)
as
begin
declare @String varchar(50)
set @String=(select PassWord from tbl_LoginMaster where Username=@UserName and Password=@OldPassWord)
if(@String =@OldPassWord)
begin
if (@String =@NewPassWord)
begin
set @Result=2
end
else
begin
Update tbl_LoginMaster set PassWord=@NewPassWord where UserName=@UserName
set @Result=1
end
end
else
begin
set @Result=3
end
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetOnlineMemberData]    Script Date: 10/02/2009 15:40:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_GetOnlineMemberData]
as
begin
select UserName as [Online Members] from tbl_LoginMaster
 where GM_NGO_Id in(select MemberId from tbl_MemberOnline where [status]=1)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetOnlineNGOData]    Script Date: 10/02/2009 15:40:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_GetOnlineNGOData]
as
begin
select UserName as [Online NGO] from tbl_LoginMaster 
where GM_NGO_Id in(select NGOId from tbl_NGOOnline where
 [status]=1)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetNGOMailsId]    Script Date: 10/02/2009 15:40:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_GetNGOMailsId]
as
begin
Select Username+'@GlobalWarming.com' as UserName,GM_NGO_Id from tbl_LoginMaster where 
role='NGO'
end
GO
/****** Object:  StoredProcedure [dbo].[SP_ShowMemberMailId]    Script Date: 10/02/2009 15:40:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_ShowMemberMailId]
as
begin
Select Username+'@GlobalWarming.com' as UserName,GM_NGO_Id from tbl_LoginMaster where 
role='GMember'
end
GO
/****** Object:  StoredProcedure [dbo].[SP_AdminEmailiddesplay]    Script Date: 10/02/2009 15:40:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[SP_AdminEmailiddesplay]
as
begin
Select Username+'@GlobalWarming.com' as UserName,GM_NGO_Id from tbl_LoginMaster where 
role='Admin'
end
GO
/****** Object:  StoredProcedure [dbo].[Sp_Inboxdetailshows]    Script Date: 10/02/2009 15:40:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Sp_Inboxdetailshows](@Receptedid int)            
as             
begin            
select  e.username,f.EMailReadStatus,f.EmailDeletestatus,d.Emailid,convert( varchar (50), d.Emaildate,103)as Date ,d.EmailSubjectText,d.EMailBodyMsg        
 from tbl_LoginMaster e inner join tbl_emailmaster d on d.EmailSenderId=e.GM_NGO_Id        
inner join  tbl_EmailDetails f on f.emailid=d.emailid where f.EmailReciptedId =@Receptedid 
      
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetNonApprovalMember]    Script Date: 10/02/2009 15:40:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_GetNonApprovalMember]
as
Begin
Select n.MemberId,n.FName,Convert(varchar(50),n.DOR,105)as DOR,l.UserId,l.Role from tbl_MemberMaster n Inner Join
tbl_LoginMaster l on n.MemberId=l.GM_NGO_Id and l.Status='Pending'
end
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertMemberMaster]    Script Date: 10/02/2009 15:40:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_InsertMemberMaster]  
 (  
 @FName varchar(50)  
, @MName varchar(50)  
, @LName varchar(50)  
, @DOB datetime 
, @Address varchar(200)  
, @EmailId varchar(40)  
, @PhoneNo varchar(20)  
, @ImageContent varbinary(max)  
, @ImageFile varchar(50),  
   @UserName varchar(50),  
 @Password varchar(40),  
@Qualification varchar(50),
 @Out varchar(150) output  
,@MemberId int out
)  
AS  
begin  
if not exists(select UserId from tbl_LoginMaster where UserName=@UserName )  
begin  
INSERT INTO dbo.tbl_MemberMaster (  
   
 FName , MName  , LName  , DOB,DOR    , [Address]  , EmailId  , PhoneNo  ,Qualification, Photo  , ImageFile  )  
VALUES (  
   
 @FName  
, @MName  
, @LName  
, @DOB,
getdate()
, @Address  
, @EmailId  
, @PhoneNo,  
@Qualification
, @ImageContent  
, @ImageFile  
)  

  
set @MemberId=(select ident_current('tbl_MemberMaster'))  
insert into tbl_LoginMaster (UserName,Password,GM_NGO_Id,[Status],[Role])  
values  
(  
@UserName,@Password,@MemberId,'Pending','GMember'  
)  
set @out='Your Registration Completed.'  
end  
else  
 begin  
  set @out='Given Username used by another user.Choose another.'  
 end  
end
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertNGOMaster]    Script Date: 10/02/2009 15:40:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_InsertNGOMaster]  
 (  
 @FName varchar(50)  
, @MName varchar(50)  
, @LName varchar(50)  
, @DOB datetime 
, @Address varchar(200)  
, @EmailId varchar(40)  
, @PhoneNo varchar(20),
@Qualification varchar(50)
, @Photo varbinary(max),  
@ImageFile varchar(50)
, @Working varchar(500),
   @UserName varchar(50),  
 @Password varchar(40),  
@Experience varchar(50),
 @Out varchar(150) output  
,@NGOId int out
)  
AS  
begin  
if not exists(select UserId from tbl_LoginMaster where UserName=@UserName )  
begin  
INSERT INTO tbl_NGOMaster(
   
 FName , MName  , LName  , DOB,DOR    , [Address]  , EmailId  , PhoneNo  ,Qualification, Photo  , ImageFile,Working  )  
VALUES (  
   
 @FName  
, @MName  
, @LName  
, @DOB,
getdate()
, @Address  
, @EmailId  
, @PhoneNo ,
@Qualification 
, @Photo 
, @ImageFile ,
@Working 
)  
  
set @NGOId=(select ident_current('tbl_NGOMaster'))  
insert into tbl_LoginMaster (UserName,Password,GM_NGO_Id,[Status],[Role])  
values  
(  
@UserName,@Password,@NGOId,'Pending','NGO'  
)  
set @out='Your Registration Completed.'  
end  
else  
 begin  
  set @out='Given Username used by another user.Choose another.'  
 end  
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetNonApprovalNGO]    Script Date: 10/02/2009 15:40:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_GetNonApprovalNGO]
as
Begin
Select n.NGOId,n.FName,Convert(varchar(50),n.DOR,105)as DOR,l.UserId,l.Role from tbl_NGOMaster n Inner Join
tbl_LoginMaster l on n.NGOId=l.GM_NGO_Id and l.Status='Pending'
end
GO
/****** Object:  StoredProcedure [dbo].[sp_ApproveNGORegistration]    Script Date: 10/02/2009 15:40:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_ApproveNGORegistration]
(@NGOId int)
as
Begin
Update tbl_LoginMaster set Status='Approved' Where GM_NGO_Id=@NGOId
end
GO
/****** Object:  StoredProcedure [dbo].[sp_ApproveMemberRegistration]    Script Date: 10/02/2009 15:40:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_ApproveMemberRegistration]
(@MemberId int)
as
Begin
Update tbl_LoginMaster set Status='Approved' Where GM_NGO_Id=@MemberId
end
GO
/****** Object:  StoredProcedure [dbo].[Sp_VerifyUserLogin]    Script Date: 10/02/2009 15:40:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[Sp_VerifyUserLogin]
	(
	@UserName varchar(50),
	@Password varchar(50),
	@GM_NGO_Id int output,
	@Flag int output,
	@Role varchar(50) output
	)
AS
	declare @founduser varchar(50)
	select @founduser=UserName from tbl_LoginMaster where UserName=@UserName and password =@password
	if @founduser is not null
	begin
	set @GM_NGO_Id=(Select GM_NGO_Id from tbl_LoginMaster where UserName=@UserName and Password=@password)
	set @Role=(Select Role from tbl_LoginMaster where UserName=@UserName and Password=@password)
	set @Flag= 0--User Exists
return
	end
--	else
--	begin
--	set @Flag= 3--User Not Exists
--return
--	end

	if exists(select UserName from tbl_LoginMaster where UserName=@UserName)
begin
	set @Flag=2--Password Wrong
	set @Role='null'
	set @GM_NGO_Id=0
	
return
end
	else
begin
	set @Flag= 1--UserName Wrong
	set @Role='null'
	set @GM_NGO_Id=0
return
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetLoginUserId]    Script Date: 10/02/2009 15:40:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Procedure [dbo].[sp_GetLoginUserId]
(@GM_NGO_Id int)
as
Begin
Select UserId from tbl_LoginMaster Where GM_NGO_Id=@GM_NGO_Id
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetImage]    Script Date: 10/02/2009 15:40:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_GetImage]
(@GM_NGO_Id int)
as 
Begin
If exists (Select NGOId from tbl_NGOMaster Where NGOId=@GM_NGO_Id)
begin
Select NGOId,FName,Photo,ImageFile from tbl_NGOMaster where NGOId=@GM_NGO_Id
end

If Exists (Select MemberId from tbl_MemberMaster Where MemberId=@GM_NGO_Id)
begin
Select MemberId,FName,Photo,ImageFile from tbl_MemberMaster where MemberId=@GM_NGO_Id
end
end
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateNGOProfile]    Script Date: 10/02/2009 15:40:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PRocedure [dbo].[sp_UpdateNGOProfile]
(@NGOId int,
@FName varchar(50),
@MName varchar(50),
@LName varchar(50),
@Address varchar(50),
@PhoneNo varchar(50),
@EmailId varchar(50),
@Qualification varchar(50),
@Working varchar(500),
@Photo varbinary(max),
@ImageFile varchar(50))
as
Begin
Update tbl_NGOMaster set FName=@FName,
MName=@MName,LName=@LName,Address=@Address,PhoneNo=@PhoneNo,
EmailId=@EmailId,Qualification=@Qualification,working=@working,Photo=@Photo,ImageFile=@ImageFile Where NGOId=@NGOId
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetNGOProfileById]    Script Date: 10/02/2009 15:40:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_GetNGOProfileById]
(@NGOId int)
as
Begin
Select * from tbl_NGOMaster Where NGOId=@NGOId
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetScheduleDetailsById]    Script Date: 10/02/2009 15:40:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_GetScheduleDetailsById]
(@ScheduleId int)
as
Begin
Select Topic,Convert(varchar(50),ArrangedDate,105)as ArrangedDate,
Duration,Description,Contents,FileName, Convert(varchar(50),AnnouncedDate,105)as AnnouncedDate,
ConductedBoard,Name,Address,Designation
from tbl_ScheduleDetails where ScheduleId=@ScheduleId
end
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertScheduleDetails]    Script Date: 10/02/2009 15:40:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_InsertScheduleDetails]
(@Topic varchar(200),
@ArrangedDate datetime,
@Duration varchar(100),
@Description varchar(2000),
@Contents varbinary(max),
@FileName varchar(50),
@AnnouncedDate datetime,
@ConductedBoard varchar(2000),
@Name varchar(200),
@Address varchar(500),
@Designation varchar(1000))
as
Begin
Insert into tbl_ScheduleDetails(Topic,ArrangedDate,Duration,Description,Contents,
FileName,AnnouncedDate,ConductedBoard,Name,Address,Designation)values
(@Topic,@ArrangedDate,@Duration,@Description,@Contents,
@FileName,@AnnouncedDate,@ConductedBoard,@Name,@Address,@Designation)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertNewsTypes]    Script Date: 10/02/2009 15:40:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_InsertNewsTypes]
(@TypeName varchar(100),
@Description varchar(50))
as
Begin
Declare @b varchar(50)
Declare @a varchar(50)
set @b=(Select max(NewsTypeId) from tbl_NewsTypes)
if @b is null
begin
set @a='NWS'+(Select Convert(varchar(50),1101))
end
else
begin
set @a=(Select substring(@b,4,6))
set @a=@a+1
set @a='NWS'+@a
end
Insert into tbl_NewsTypes(NewsTypeId,TypeName,Description)values
(@a,@TypeName,@Description)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetNewsTopics]    Script Date: 10/02/2009 15:40:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_GetNewsTopics]
as
Begin
Select  n.NewsId,n.Topic,t.NewsTypeId,t.TypeName, Convert(varchar(50),n.PostedDate,103)
as PostedDate
 from tbl_NewsDetails n Inner Join tbl_NewsTypes t
on n.NewsTypeId=t.NewsTypeId 
--where Convert(varchar(50),n.PostedDate,103)=Convert(varchar(50),getdate(),103)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetNewDetailsById]    Script Date: 10/02/2009 15:40:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_GetNewDetailsById]
(@NewsId int)
as
Begin
Select NewsId,Topic,NewsContent,NewsLink,
NewsImage,FileName,Convert(varchar(50),PostedDate,103)as
PostedDate from tbl_NewsDetails Where NewsId=@NewsId
end
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertNewsDetails]    Script Date: 10/02/2009 15:40:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_InsertNewsDetails]
(@Topic varchar(250),
@NewsContent varchar(5000),
@NewsLink varchar(50),
@NewsImage varbinary(max),
@FileName varchar(50),
@PostedDate datetime,
@NewsTypeId varchar(50),
@RelatedLinks varchar(300))
as
Begin
Insert into tbl_NewsDetails(Topic,NewsContent,NewsLink,NewsImage,FileName,PostedDate,
NewsTypeId,RelatedLinks)values(@Topic,@NewsContent,@NewsLink,@NewsImage,@FileName,
@PostedDate,@NewsTypeId,@RelatedLinks)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertToxicSubstancesTypes]    Script Date: 10/02/2009 15:40:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_InsertToxicSubstancesTypes]
(@ToxicType varchar(100),
@Description varchar(100))
as
Begin
Declare @b varchar(50)
Declare @a varchar(50)
set @b=(Select max(ToxicTypeId) from tbl_ToxicSubstancesTypes)
if @b is null
begin
set @a='TXT'+(Select Convert(varchar(50),1101))
end
else
begin
set @a=(Select substring(@b,4,6))
set @a=@a+1
set @a='TXT'+@a
end
Insert into tbl_ToxicSubstancesTypes values(@a,@ToxicType,@Description)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertToxicSubstanceDetails]    Script Date: 10/02/2009 15:40:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_InsertToxicSubstanceDetails]
(@NameOfSubstance varchar(100),
@Quantity varchar(50),
@CAS varchar(50),
@ToxicTypeId varchar(50))
as
begin
Insert into tbl_ToxicSubstanceDetails(NameOfSubstance,Quantity,CAS,ToxicTypeId)
values(@NameOfSubstance,@Quantity,@CAS,@ToxicTypeId)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetToxicSubstanceDetails]    Script Date: 10/02/2009 15:40:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_GetToxicSubstanceDetails]
(@ToxicTypeId varchar(50))
as
Begin
select * from tbl_ToxicSubstanceDetails Where ToxicTypeId=@ToxicTypeId
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetNewsTitle]    Script Date: 10/02/2009 15:40:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_GetNewsTitle]
(@UserId int)
as
begin
select s.UserId,s.NewsLetterId,n.NewsLetterId,n.Title,n.Topic,
convert(varchar(50),PostedDate,103) as PostedDate
from tbl_SendNewsLetters s Inner Join tbl_NewsLetters n on
s.NewsLetterId=n.NewsLetterId where s.UserId=@UserId
end
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertNewsLetterDetails]    Script Date: 10/02/2009 15:40:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_InsertNewsLetterDetails]
(@Title varchar(100),
@Topic varchar(2500),
@Venue varchar(1000),
@Conclusion varchar(5000),
@NewsImage varbinary(max),
@FileName varchar(50))

as
Begin
Declare @b varchar(50)
Declare @a varchar(50)
set @b=(Select max(NewsLetterId) from tbl_NewsLetters)
if @b is null
begin
set @a='NLS'+(Select Convert(varchar(50),1101))
end
else
begin
set @a=(Select substring(@b,4,6))
set @a=@a+1
set @a='NLS'+@a
end
Declare @Month varchar(50)
Declare @Year varchar(50)
set @Month=(SELECT DATENAME(month, GETDATE()) )
set @Year=(Select DAtename(Year,Getdate()))
Insert into tbl_NewsLetters values(@a,@Title,@Topic,@Venue,@Conclusion,
@NewsImage,@FileName, getdate(),@Month,@Year)


end
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertSendNewsletter]    Script Date: 10/02/2009 15:40:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_InsertSendNewsletter]
(@UserId int)
as
Begin
Declare @NewsLetterId varchar(50)
set @NewsLetterId=(Select Max(NewsLetterId) from tbl_NewsLetters)
Insert into tbl_SendNewsLetters  values(@UserId,@NewsLetterId)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_ShowNewsLetterDetails]    Script Date: 10/02/2009 15:40:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_ShowNewsLetterDetails]
(@NewsLetterId varchar(50))
as
Begin
Select * from tbl_NewsLetters Where NewsLetterId=@NewsLetterId
end
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertStateWisePopulation]    Script Date: 10/02/2009 15:40:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_InsertStateWisePopulation]
(@Statename varchar(100),
@Abbr varchar(50),
@Status varchar(50),
@Capital varchar(50),
@Area varchar(50),
@Cf1981 varchar(50),
@Cf1991 varchar(50),
@Cf2001 varchar(50))
as
Begin
Insert into tbl_StateWisePopulation(StateName,Abbr,Status,Capital,Area,cf1981,cf1991,
cf2001)values(@Statename,@Abbr,@Status,@Capital,@Area,@Cf1981,@Cf1991,@Cf2001)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetStaeWisePopulationByStateId]    Script Date: 10/02/2009 15:40:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_GetStaeWisePopulationByStateId]
(@StateId int)
as
Begin
Select * from tbl_StateWisePopulation Where StateId=@StateId
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetCityDetailsById]    Script Date: 10/02/2009 15:40:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_GetCityDetailsById]
(@CityId int)
as
begin
select s.StateName,c.CityId,c.CityName,c.CF1991,c.CF2001
 from tbl_StateWisePopulation s Inner Join tbl_CityWisePopulation c
on s.StateId=C.StateId where cityid=@CityId
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetCityNamesByStateId]    Script Date: 10/02/2009 15:40:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_GetCityNamesByStateId]
(@StateId int)
as
Begin
Select CityName,CityId from tbl_CityWisePopulation Where StateId=@StateId
end
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertCityWisePopulation]    Script Date: 10/02/2009 15:40:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_InsertCityWisePopulation]
(@CityName varchar(50),
@CF1991 varchar(50),
@CF2001 varchar(50),
@StateId int)
as
Begin
Insert into tbl_CityWisePopulation(CityName,CF1991,CF2001,StateId)
values(@CityName,@CF1991,@CF2001,@StateId)
end
GO
/****** Object:  StoredProcedure [dbo].[Sp_EmailMaster_Insert]    Script Date: 10/02/2009 15:40:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[Sp_EmailMaster_Insert]
	@EmailSenderId int
,	@EmailSubjectText varchar(50)
,	@EMailBodyMsg varchar(500)
,	@EmailAttachFileContent varbinary (max)
,	@EmailAttachFileName varchar(50)
,   @EmailReciptedId int

AS
begin
declare @Emaildate datetime,@Emailid int

set @Emaildate=(select getdate())

if @EmailAttachFileContent is not null
begin
INSERT INTO dbo.tbl_EmailMaster (
	EmailSenderId
,	Emaildate
,	EmailSubjectText
,	EMailBodyMsg
,	EmailAttachFileContent
,	EmailAttachFileName
)
VALUES (
	@EmailSenderId
,	@Emaildate
,	@EmailSubjectText
,	@EMailBodyMsg
,	@EmailAttachFileContent
,	@EmailAttachFileName
)
set @Emailid=(select ident_current('tbl_EmailMaster'))
insert into tbl_EmailDetails(Emailid,EmailReciptedId)values(@Emailid,@EmailReciptedId)
end
else
begin
INSERT INTO dbo.tbl_EmailMaster (
	EmailSenderId
,	Emaildate
,	EmailSubjectText
,	EMailBodyMsg
,	EmailAttachFileName
)
VALUES (
	@EmailSenderId
,	@Emaildate
,	@EmailSubjectText
,	@EMailBodyMsg
,	@EmailAttachFileName
)
set @Emailid=(select ident_current('tbl_EmailMaster'))
insert into tbl_EmailDetails(Emailid,EmailReciptedId)values(@Emailid,@EmailReciptedId)
end

end
GO
/****** Object:  StoredProcedure [dbo].[Sp_ShowDetailsEmailidwise]    Script Date: 10/02/2009 15:40:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[Sp_ShowDetailsEmailidwise](@Emailid int)  
as begin
update  tbl_EmailDetails set EMailReadStatus=1 where emailid=@Emailid 
select * from tbl_EmailMaster where emailid=@Emailid  
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetMemberProfileById]    Script Date: 10/02/2009 15:40:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_GetMemberProfileById]
(@MemberId int)
as
Begin
Select * from tbl_MemberMaster Where MemberId=@MemberId
end
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateMemberProfile]    Script Date: 10/02/2009 15:40:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PRocedure [dbo].[sp_UpdateMemberProfile]
(@MemberId int,
@FName varchar(50),
@MName varchar(50),
@LName varchar(50),
@Address varchar(50),
@PhoneNo varchar(50),
@EmailId varchar(50),
@Photo varbinary(max),
@ImageFile varchar(50))
as
Begin
Update tbl_MemberMaster set FName=@FName,
MName=@MName,LName=@LName,Address=@Address,PhoneNo=@PhoneNo,
EmailId=@EmailId,Photo=@Photo,ImageFile=@ImageFile Where MemberId=@MemberId
end
GO
/****** Object:  ForeignKey [FK_tbl_CityWisePopulation_tbl_StateWisePopulation]    Script Date: 10/02/2009 15:40:14 ******/
ALTER TABLE [dbo].[tbl_CityWisePopulation]  WITH CHECK ADD  CONSTRAINT [FK_tbl_CityWisePopulation_tbl_StateWisePopulation] FOREIGN KEY([StateId])
REFERENCES [dbo].[tbl_StateWisePopulation] ([StateId])
GO
ALTER TABLE [dbo].[tbl_CityWisePopulation] CHECK CONSTRAINT [FK_tbl_CityWisePopulation_tbl_StateWisePopulation]
GO
/****** Object:  ForeignKey [FK_tbl_NewsDetails_tbl_NewsTypes]    Script Date: 10/02/2009 15:40:14 ******/
ALTER TABLE [dbo].[tbl_NewsDetails]  WITH CHECK ADD  CONSTRAINT [FK_tbl_NewsDetails_tbl_NewsTypes] FOREIGN KEY([NewsTypeId])
REFERENCES [dbo].[tbl_NewsTypes] ([NewsTypeId])
GO
ALTER TABLE [dbo].[tbl_NewsDetails] CHECK CONSTRAINT [FK_tbl_NewsDetails_tbl_NewsTypes]
GO
/****** Object:  ForeignKey [FK_tbl_SendNewsLetters_tbl_LoginMaster]    Script Date: 10/02/2009 15:40:14 ******/
ALTER TABLE [dbo].[tbl_SendNewsLetters]  WITH CHECK ADD  CONSTRAINT [FK_tbl_SendNewsLetters_tbl_LoginMaster] FOREIGN KEY([UserId])
REFERENCES [dbo].[tbl_LoginMaster] ([UserId])
GO
ALTER TABLE [dbo].[tbl_SendNewsLetters] CHECK CONSTRAINT [FK_tbl_SendNewsLetters_tbl_LoginMaster]
GO
/****** Object:  ForeignKey [FK_tbl_SendNewsLetters_tbl_NewsLetters]    Script Date: 10/02/2009 15:40:14 ******/
ALTER TABLE [dbo].[tbl_SendNewsLetters]  WITH CHECK ADD  CONSTRAINT [FK_tbl_SendNewsLetters_tbl_NewsLetters] FOREIGN KEY([NewsLetterId])
REFERENCES [dbo].[tbl_NewsLetters] ([NewsLetterId])
GO
ALTER TABLE [dbo].[tbl_SendNewsLetters] CHECK CONSTRAINT [FK_tbl_SendNewsLetters_tbl_NewsLetters]
GO
/****** Object:  ForeignKey [FK_tbl_ToxicSubstanceDetails_tbl_ToxicSubstancesTypes]    Script Date: 10/02/2009 15:40:14 ******/
ALTER TABLE [dbo].[tbl_ToxicSubstanceDetails]  WITH CHECK ADD  CONSTRAINT [FK_tbl_ToxicSubstanceDetails_tbl_ToxicSubstancesTypes] FOREIGN KEY([ToxicTypeId])
REFERENCES [dbo].[tbl_ToxicSubstancesTypes] ([ToxicTypeId])
GO
ALTER TABLE [dbo].[tbl_ToxicSubstanceDetails] CHECK CONSTRAINT [FK_tbl_ToxicSubstanceDetails_tbl_ToxicSubstancesTypes]
GO
