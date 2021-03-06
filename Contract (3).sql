USE [Contract]
GO
/****** Object:  StoredProcedure [dbo].[FilterOwner]    Script Date: 05/22/18 5:44:47 PM ******/
DROP PROCEDURE [dbo].[FilterOwner]
GO
/****** Object:  Table [dbo].[State]    Script Date: 05/22/18 5:44:47 PM ******/
DROP TABLE [dbo].[State]
GO
/****** Object:  Table [dbo].[SignedSwornAffidavitDiverseDocument]    Script Date: 05/22/18 5:44:47 PM ******/
DROP TABLE [dbo].[SignedSwornAffidavitDiverseDocument]
GO
/****** Object:  Table [dbo].[SignedSwordAffidavitSBADocument]    Script Date: 05/22/18 5:44:47 PM ******/
DROP TABLE [dbo].[SignedSwordAffidavitSBADocument]
GO
/****** Object:  Table [dbo].[PromotionalCodes]    Script Date: 05/22/18 5:44:47 PM ******/
DROP TABLE [dbo].[PromotionalCodes]
GO
/****** Object:  Table [dbo].[PaymentDetails]    Script Date: 05/22/18 5:44:47 PM ******/
DROP TABLE [dbo].[PaymentDetails]
GO
/****** Object:  Table [dbo].[OwnerLegalDocument]    Script Date: 05/22/18 5:44:47 PM ******/
DROP TABLE [dbo].[OwnerLegalDocument]
GO
/****** Object:  Table [dbo].[OwnerInfo]    Script Date: 05/22/18 5:44:47 PM ******/
DROP TABLE [dbo].[OwnerInfo]
GO
/****** Object:  Table [dbo].[FormDD214Document]    Script Date: 05/22/18 5:44:47 PM ******/
DROP TABLE [dbo].[FormDD214Document]
GO
/****** Object:  Table [dbo].[Ethnicity]    Script Date: 05/22/18 5:44:47 PM ******/
DROP TABLE [dbo].[Ethnicity]
GO
/****** Object:  Table [dbo].[ESignature]    Script Date: 05/22/18 5:44:47 PM ******/
DROP TABLE [dbo].[ESignature]
GO
/****** Object:  Table [dbo].[DriverLicensesDocument]    Script Date: 05/22/18 5:44:47 PM ******/
DROP TABLE [dbo].[DriverLicensesDocument]
GO
/****** Object:  Table [dbo].[Diversity]    Script Date: 05/22/18 5:44:47 PM ******/
DROP TABLE [dbo].[Diversity]
GO
/****** Object:  Table [dbo].[BusinessType]    Script Date: 05/22/18 5:44:47 PM ******/
DROP TABLE [dbo].[BusinessType]
GO
/****** Object:  Table [dbo].[ArticalofIncorporationDocument]    Script Date: 05/22/18 5:44:47 PM ******/
DROP TABLE [dbo].[ArticalofIncorporationDocument]
GO
/****** Object:  Table [dbo].[AnnualFee]    Script Date: 05/22/18 5:44:47 PM ******/
DROP TABLE [dbo].[AnnualFee]
GO
/****** Object:  Table [dbo].[AdditionalinformationDocument]    Script Date: 05/22/18 5:44:47 PM ******/
DROP TABLE [dbo].[AdditionalinformationDocument]
GO
/****** Object:  Table [dbo].[AdditionalinformationDocument]    Script Date: 05/22/18 5:44:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdditionalinformationDocument](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OwnerID] [int] NULL,
	[Additionalinfo] [nvarchar](100) NULL,
	[UploadedTime] [datetime] NULL,
 CONSTRAINT [PK_Additionalinformation] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AnnualFee]    Script Date: 05/22/18 5:44:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnnualFee](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AnualCertificationFee] [nvarchar](100) NULL,
 CONSTRAINT [PK_AnnualFee] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ArticalofIncorporationDocument]    Script Date: 05/22/18 5:44:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArticalofIncorporationDocument](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OwnerID] [int] NULL,
	[ArticalofIncorporation] [nvarchar](100) NULL,
	[UploadedTime] [datetime] NULL,
 CONSTRAINT [PK_ArticalofIncorporation] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BusinessType]    Script Date: 05/22/18 5:44:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BusinessType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BusinessTypeName] [nvarchar](200) NULL,
 CONSTRAINT [PK_BusinessType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Diversity]    Script Date: 05/22/18 5:44:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Diversity](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DiversityName] [nvarchar](100) NULL,
	[DiversityCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_Diversity] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DriverLicensesDocument]    Script Date: 05/22/18 5:44:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DriverLicensesDocument](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OwnerID] [int] NULL,
	[DriverLicense] [nvarchar](100) NULL,
	[UploadedTime] [datetime] NULL,
 CONSTRAINT [PK_DriverLicense] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ESignature]    Script Date: 05/22/18 5:44:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ESignature](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OwnerID] [int] NULL,
	[FirstName] [nvarchar](100) NULL,
	[LastName] [nvarchar](100) NULL,
	[DateOfBirth] [datetime] NULL,
	[EMail] [nvarchar](100) NULL,
	[Sign] [nchar](10) NULL,
	[IsAccept] [bit] NOT NULL,
	[IsSignAccept] [bit] NOT NULL,
 CONSTRAINT [PK_ESignature] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ethnicity]    Script Date: 05/22/18 5:44:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ethnicity](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EthnicityName] [nvarchar](100) NULL,
 CONSTRAINT [PK_Ethnicity] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FormDD214Document]    Script Date: 05/22/18 5:44:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FormDD214Document](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OwnerID] [int] NULL,
	[FormDD214] [nvarchar](100) NULL,
	[UploadedTime] [datetime] NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OwnerInfo]    Script Date: 05/22/18 5:44:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OwnerInfo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](100) NULL,
	[LastName] [nvarchar](100) NULL,
	[MobileNumber] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
	[Password] [nvarchar](100) NULL,
	[LegalBusinessName] [nvarchar](100) NULL,
	[DBA] [nvarchar](50) NULL,
	[AddressLine1] [nvarchar](200) NULL,
	[AddressLine2] [nvarchar](200) NULL,
	[City] [nvarchar](50) NULL,
	[State] [nvarchar](50) NULL,
	[ZipCode] [nvarchar](50) NULL,
	[BusinessPhoneNumber] [nvarchar](50) NULL,
	[Website] [nvarchar](50) NULL,
	[IsNotWebsite] [bit] NOT NULL,
	[BusinessType] [int] NULL,
	[FederalTaxID] [nvarchar](50) NULL,
	[CertificationNumber] [nvarchar](50) NULL,
	[CompanyDescription] [nvarchar](max) NULL,
	[OwnerFirstName] [nvarchar](50) NULL,
	[OwnerMiddleName] [nvarchar](50) NULL,
	[OwnerLastName] [nvarchar](50) NULL,
	[OwnerTitle] [nvarchar](50) NULL,
	[OwnerEmail] [nvarchar](50) NULL,
	[Gender] [nvarchar](50) NULL,
	[PromoCode] [nvarchar](100) NULL,
	[Ethnicity] [int] NULL,
	[IsLGBTBE] [bit] NOT NULL,
	[IsMBE] [bit] NOT NULL,
	[IsSDVBE] [bit] NOT NULL,
	[IsSBE] [bit] NOT NULL,
	[IsVBE] [bit] NOT NULL,
	[IsWBE] [bit] NOT NULL,
	[IsCertified] [bit] NOT NULL,
 CONSTRAINT [PK_OwnerInfo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OwnerLegalDocument]    Script Date: 05/22/18 5:44:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OwnerLegalDocument](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OwnerID] [int] NULL,
	[LegalDocument] [nvarchar](100) NULL,
	[UploadedTime] [datetime] NULL,
 CONSTRAINT [PK_OwnerLegalDocuments] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentDetails]    Script Date: 05/22/18 5:44:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OwnerID] [int] NULL,
	[Name] [nvarchar](100) NULL,
	[BillingZipCode] [nvarchar](50) NULL,
	[CardNumber] [nvarchar](100) NULL,
	[ExpirationMonth] [nvarchar](100) NULL,
	[ExpirationYear] [nvarchar](100) NULL,
	[CVV] [nvarchar](50) NULL,
	[Amount] [int] NULL,
	[Description] [nvarchar](100) NULL,
	[Currency] [nvarchar](50) NULL,
	[Email] [nvarchar](200) NULL,
	[RenewalDate] [datetime] NULL,
	[Token] [nvarchar](max) NULL,
 CONSTRAINT [PK_PaymentDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PromotionalCodes]    Script Date: 05/22/18 5:44:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PromotionalCodes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PromotionalCode] [nvarchar](200) NULL,
	[Email] [nvarchar](100) NULL,
	[IsApply] [bit] NOT NULL,
	[ExpiryDate] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_PromotionalCodes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SignedSwordAffidavitSBADocument]    Script Date: 05/22/18 5:44:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SignedSwordAffidavitSBADocument](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OwnerID] [int] NULL,
	[SignedSwordAffidavitSBA] [nvarchar](100) NULL,
	[UploadedTime] [datetime] NULL,
 CONSTRAINT [PK_SignedSwordAffidavitSBA] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SignedSwornAffidavitDiverseDocument]    Script Date: 05/22/18 5:44:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SignedSwornAffidavitDiverseDocument](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OwnerID] [int] NULL,
	[SignedSwornAffidavitDiverse] [nvarchar](100) NULL,
	[UploadedTime] [datetime] NULL,
 CONSTRAINT [PK_SignedSwornAffidavitDiverse] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[State]    Script Date: 05/22/18 5:44:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[State](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StateName] [nvarchar](100) NULL,
	[StateCode] [nvarchar](100) NULL,
 CONSTRAINT [PK_State] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AdditionalinformationDocument] ON 

INSERT [dbo].[AdditionalinformationDocument] ([ID], [OwnerID], [Additionalinfo], [UploadedTime]) VALUES (1, 3, N'/images/Additionalinfo/1715.jpg', CAST(N'2018-05-14T18:42:13.077' AS DateTime))
INSERT [dbo].[AdditionalinformationDocument] ([ID], [OwnerID], [Additionalinfo], [UploadedTime]) VALUES (2, 4, N'/images/Additionalinfo/1973.jpg', CAST(N'2018-05-14T18:47:38.860' AS DateTime))
INSERT [dbo].[AdditionalinformationDocument] ([ID], [OwnerID], [Additionalinfo], [UploadedTime]) VALUES (3, 5, N'/images/Additionalinfo/7013.jpg', CAST(N'2018-05-14T18:49:53.607' AS DateTime))
INSERT [dbo].[AdditionalinformationDocument] ([ID], [OwnerID], [Additionalinfo], [UploadedTime]) VALUES (4, 9, N'/images/Additionalinfo/7364.jpg', CAST(N'2018-05-14T20:06:17.643' AS DateTime))
INSERT [dbo].[AdditionalinformationDocument] ([ID], [OwnerID], [Additionalinfo], [UploadedTime]) VALUES (1002, 1, N'/images/Additionalinfo/8355.jpg', CAST(N'2018-05-21T17:21:12.740' AS DateTime))
SET IDENTITY_INSERT [dbo].[AdditionalinformationDocument] OFF
SET IDENTITY_INSERT [dbo].[ArticalofIncorporationDocument] ON 

INSERT [dbo].[ArticalofIncorporationDocument] ([ID], [OwnerID], [ArticalofIncorporation], [UploadedTime]) VALUES (1, 1, N'/images/ArticalofIncorporation/9811.jpg', CAST(N'2018-05-14T16:59:02.647' AS DateTime))
INSERT [dbo].[ArticalofIncorporationDocument] ([ID], [OwnerID], [ArticalofIncorporation], [UploadedTime]) VALUES (2, 1, N'/images/ArticalofIncorporation/3972.jpg', CAST(N'2018-05-14T16:59:28.937' AS DateTime))
INSERT [dbo].[ArticalofIncorporationDocument] ([ID], [OwnerID], [ArticalofIncorporation], [UploadedTime]) VALUES (3, 2, N'/images/ArticalofIncorporation/5365.jpg', CAST(N'2018-05-14T17:10:20.463' AS DateTime))
INSERT [dbo].[ArticalofIncorporationDocument] ([ID], [OwnerID], [ArticalofIncorporation], [UploadedTime]) VALUES (4, 2, N'/images/ArticalofIncorporation/565login-bg.jpg', CAST(N'2018-05-14T17:10:20.470' AS DateTime))
INSERT [dbo].[ArticalofIncorporationDocument] ([ID], [OwnerID], [ArticalofIncorporation], [UploadedTime]) VALUES (5, 3, N'/images/ArticalofIncorporation/1181.jpg', CAST(N'2018-05-14T18:42:13.043' AS DateTime))
INSERT [dbo].[ArticalofIncorporationDocument] ([ID], [OwnerID], [ArticalofIncorporation], [UploadedTime]) VALUES (6, 4, N'/images/ArticalofIncorporation/5421.jpg', CAST(N'2018-05-14T18:46:50.710' AS DateTime))
INSERT [dbo].[ArticalofIncorporationDocument] ([ID], [OwnerID], [ArticalofIncorporation], [UploadedTime]) VALUES (7, 5, N'/images/ArticalofIncorporation/6351.jpg', CAST(N'2018-05-14T18:49:53.540' AS DateTime))
INSERT [dbo].[ArticalofIncorporationDocument] ([ID], [OwnerID], [ArticalofIncorporation], [UploadedTime]) VALUES (8, 7, N'/images/ArticalofIncorporation/6461.jpg', CAST(N'2018-05-14T19:17:19.553' AS DateTime))
INSERT [dbo].[ArticalofIncorporationDocument] ([ID], [OwnerID], [ArticalofIncorporation], [UploadedTime]) VALUES (9, 8, N'/images/ArticalofIncorporation/4261.jpg', CAST(N'2018-05-14T19:43:43.333' AS DateTime))
INSERT [dbo].[ArticalofIncorporationDocument] ([ID], [OwnerID], [ArticalofIncorporation], [UploadedTime]) VALUES (10, 9, N'/images/ArticalofIncorporation/6701.jpg', CAST(N'2018-05-14T20:06:17.577' AS DateTime))
INSERT [dbo].[ArticalofIncorporationDocument] ([ID], [OwnerID], [ArticalofIncorporation], [UploadedTime]) VALUES (1002, 3, N'/images/ArticalofIncorporation/Rohit_999_5.jpg', CAST(N'2018-05-21T17:30:12.417' AS DateTime))
INSERT [dbo].[ArticalofIncorporationDocument] ([ID], [OwnerID], [ArticalofIncorporation], [UploadedTime]) VALUES (1003, 0, N'/images/ArticalofIncorporation/_406_1.jpg', CAST(N'2018-05-21T18:07:05.647' AS DateTime))
INSERT [dbo].[ArticalofIncorporationDocument] ([ID], [OwnerID], [ArticalofIncorporation], [UploadedTime]) VALUES (1004, 4, N'/images/ArticalofIncorporation/ArticalofIncorporation_Rohit_888_1.jpg', CAST(N'2018-05-21T18:18:44.890' AS DateTime))
INSERT [dbo].[ArticalofIncorporationDocument] ([ID], [OwnerID], [ArticalofIncorporation], [UploadedTime]) VALUES (1005, 4, N'/images/ArticalofIncorporation/ArticalofIncorporation_Rohit_896_Upload.png', CAST(N'2018-05-21T18:18:44.897' AS DateTime))
SET IDENTITY_INSERT [dbo].[ArticalofIncorporationDocument] OFF
SET IDENTITY_INSERT [dbo].[BusinessType] ON 

INSERT [dbo].[BusinessType] ([ID], [BusinessTypeName]) VALUES (1, N'Corporation')
INSERT [dbo].[BusinessType] ([ID], [BusinessTypeName]) VALUES (2, N'LLC')
INSERT [dbo].[BusinessType] ([ID], [BusinessTypeName]) VALUES (3, N'Sole Proprietorship')
SET IDENTITY_INSERT [dbo].[BusinessType] OFF
SET IDENTITY_INSERT [dbo].[Diversity] ON 

INSERT [dbo].[Diversity] ([ID], [DiversityName], [DiversityCode]) VALUES (1, N'Lesbian, Gay, Bisexual, Transgender Business Enterprise', N'LGBTBE')
INSERT [dbo].[Diversity] ([ID], [DiversityName], [DiversityCode]) VALUES (2, N'Minority Owned Business Enterprise', N'MBE')
INSERT [dbo].[Diversity] ([ID], [DiversityName], [DiversityCode]) VALUES (3, N'Service Disabled Veteran Owned Business Enterprise', N'SDVBE')
INSERT [dbo].[Diversity] ([ID], [DiversityName], [DiversityCode]) VALUES (4, N'Small Business Enterprise', N'SBE')
INSERT [dbo].[Diversity] ([ID], [DiversityName], [DiversityCode]) VALUES (5, N'Veteran Owned Business Enterprise', N'VBE')
INSERT [dbo].[Diversity] ([ID], [DiversityName], [DiversityCode]) VALUES (6, N'Women Owned Business Enterprise', N'WBE')
SET IDENTITY_INSERT [dbo].[Diversity] OFF
SET IDENTITY_INSERT [dbo].[DriverLicensesDocument] ON 

INSERT [dbo].[DriverLicensesDocument] ([ID], [OwnerID], [DriverLicense], [UploadedTime]) VALUES (1, 1, N'/images/OwnerDrivingLicense/9255.jpg', CAST(N'2018-05-14T17:01:11.170' AS DateTime))
INSERT [dbo].[DriverLicensesDocument] ([ID], [OwnerID], [DriverLicense], [UploadedTime]) VALUES (2, 1, N'/images/OwnerDrivingLicense/943login-bg.jpg', CAST(N'2018-05-14T17:01:18.250' AS DateTime))
INSERT [dbo].[DriverLicensesDocument] ([ID], [OwnerID], [DriverLicense], [UploadedTime]) VALUES (3, 2, N'/images/OwnerDrivingLicense/6291.jpg', CAST(N'2018-05-14T17:10:20.533' AS DateTime))
INSERT [dbo].[DriverLicensesDocument] ([ID], [OwnerID], [DriverLicense], [UploadedTime]) VALUES (4, 2, N'/images/OwnerDrivingLicense/6362.jpg', CAST(N'2018-05-14T17:10:20.543' AS DateTime))
INSERT [dbo].[DriverLicensesDocument] ([ID], [OwnerID], [DriverLicense], [UploadedTime]) VALUES (5, 3, N'/images/OwnerDrivingLicense/1543.jpg', CAST(N'2018-05-14T18:42:13.060' AS DateTime))
INSERT [dbo].[DriverLicensesDocument] ([ID], [OwnerID], [DriverLicense], [UploadedTime]) VALUES (6, 4, N'/images/OwnerDrivingLicense/9545.jpg', CAST(N'2018-05-14T18:47:13.210' AS DateTime))
INSERT [dbo].[DriverLicensesDocument] ([ID], [OwnerID], [DriverLicense], [UploadedTime]) VALUES (7, 5, N'/images/OwnerDrivingLicense/6525.jpg', CAST(N'2018-05-14T18:49:53.590' AS DateTime))
INSERT [dbo].[DriverLicensesDocument] ([ID], [OwnerID], [DriverLicense], [UploadedTime]) VALUES (8, 9, N'/images/OwnerDrivingLicense/6892.jpg', CAST(N'2018-05-14T20:06:17.597' AS DateTime))
INSERT [dbo].[DriverLicensesDocument] ([ID], [OwnerID], [DriverLicense], [UploadedTime]) VALUES (1002, 1, N'/images/OwnerDrivingLicense/7883.jpg', CAST(N'2018-05-21T17:21:12.693' AS DateTime))
SET IDENTITY_INSERT [dbo].[DriverLicensesDocument] OFF
SET IDENTITY_INSERT [dbo].[ESignature] ON 

INSERT [dbo].[ESignature] ([ID], [OwnerID], [FirstName], [LastName], [DateOfBirth], [EMail], [Sign], [IsAccept], [IsSignAccept]) VALUES (1, 1, N'test sign first', N'test sign last', NULL, N'testsign@gmail.com', NULL, 1, 1)
INSERT [dbo].[ESignature] ([ID], [OwnerID], [FirstName], [LastName], [DateOfBirth], [EMail], [Sign], [IsAccept], [IsSignAccept]) VALUES (2, 2, N'test sign first', N'test sign last', NULL, N'testsign@gmail.com', NULL, 1, 1)
INSERT [dbo].[ESignature] ([ID], [OwnerID], [FirstName], [LastName], [DateOfBirth], [EMail], [Sign], [IsAccept], [IsSignAccept]) VALUES (7, 6, N'test sign first', N'test sign last', NULL, N'testsign@gmail.com', NULL, 1, 1)
INSERT [dbo].[ESignature] ([ID], [OwnerID], [FirstName], [LastName], [DateOfBirth], [EMail], [Sign], [IsAccept], [IsSignAccept]) VALUES (8, 7, N'test sign first', N'test sign last', NULL, N'testsign@gmail.com', NULL, 1, 1)
INSERT [dbo].[ESignature] ([ID], [OwnerID], [FirstName], [LastName], [DateOfBirth], [EMail], [Sign], [IsAccept], [IsSignAccept]) VALUES (9, 8, N'test sign first', N'test sign last', NULL, N'testsign@gmail.com', NULL, 1, 1)
INSERT [dbo].[ESignature] ([ID], [OwnerID], [FirstName], [LastName], [DateOfBirth], [EMail], [Sign], [IsAccept], [IsSignAccept]) VALUES (10, 9, N'test sign first', N'test sign last', NULL, N'testsign@gmail.com', NULL, 1, 1)
INSERT [dbo].[ESignature] ([ID], [OwnerID], [FirstName], [LastName], [DateOfBirth], [EMail], [Sign], [IsAccept], [IsSignAccept]) VALUES (11, 1, N'test sign first', N'test sign last', CAST(N'2018-05-30T00:00:00.000' AS DateTime), N'testsign@gmail.com', NULL, 1, 1)
INSERT [dbo].[ESignature] ([ID], [OwnerID], [FirstName], [LastName], [DateOfBirth], [EMail], [Sign], [IsAccept], [IsSignAccept]) VALUES (12, 3, N'test sign first', N'test sign last', CAST(N'2018-05-30T00:00:00.000' AS DateTime), N'testsign@gmail.com', NULL, 1, 1)
INSERT [dbo].[ESignature] ([ID], [OwnerID], [FirstName], [LastName], [DateOfBirth], [EMail], [Sign], [IsAccept], [IsSignAccept]) VALUES (13, 4, N'test sign first', N'test sign last', CAST(N'2018-05-28T00:00:00.000' AS DateTime), N'testsign@gmail.com', NULL, 0, 0)
SET IDENTITY_INSERT [dbo].[ESignature] OFF
SET IDENTITY_INSERT [dbo].[Ethnicity] ON 

INSERT [dbo].[Ethnicity] ([ID], [EthnicityName]) VALUES (1, N'African American')
INSERT [dbo].[Ethnicity] ([ID], [EthnicityName]) VALUES (2, N'Asian American')
INSERT [dbo].[Ethnicity] ([ID], [EthnicityName]) VALUES (3, N'Asian Pacific American')
INSERT [dbo].[Ethnicity] ([ID], [EthnicityName]) VALUES (4, N'Asian Subcontinent American')
INSERT [dbo].[Ethnicity] ([ID], [EthnicityName]) VALUES (5, N'Caucasian')
INSERT [dbo].[Ethnicity] ([ID], [EthnicityName]) VALUES (6, N'Hispanic American')
INSERT [dbo].[Ethnicity] ([ID], [EthnicityName]) VALUES (7, N'Native American')
SET IDENTITY_INSERT [dbo].[Ethnicity] OFF
SET IDENTITY_INSERT [dbo].[FormDD214Document] ON 

INSERT [dbo].[FormDD214Document] ([ID], [OwnerID], [FormDD214], [UploadedTime]) VALUES (1, 3, N'/images/FormDD/1634.jpg', CAST(N'2018-05-14T18:42:13.070' AS DateTime))
INSERT [dbo].[FormDD214Document] ([ID], [OwnerID], [FormDD214], [UploadedTime]) VALUES (2, 4, N'/images/FormDD/1942.jpg', CAST(N'2018-05-14T18:47:26.747' AS DateTime))
INSERT [dbo].[FormDD214Document] ([ID], [OwnerID], [FormDD214], [UploadedTime]) VALUES (3, 5, N'/images/FormDD/6932.jpg', CAST(N'2018-05-14T18:49:53.600' AS DateTime))
INSERT [dbo].[FormDD214Document] ([ID], [OwnerID], [FormDD214], [UploadedTime]) VALUES (4, 9, N'/images/FormDD/6993.jpg', CAST(N'2018-05-14T20:06:17.633' AS DateTime))
INSERT [dbo].[FormDD214Document] ([ID], [OwnerID], [FormDD214], [UploadedTime]) VALUES (1002, 1, N'/images/FormDD/7884.jpg', CAST(N'2018-05-21T17:21:12.723' AS DateTime))
SET IDENTITY_INSERT [dbo].[FormDD214Document] OFF
SET IDENTITY_INSERT [dbo].[OwnerInfo] ON 

INSERT [dbo].[OwnerInfo] ([ID], [FirstName], [LastName], [MobileNumber], [Email], [Password], [LegalBusinessName], [DBA], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [BusinessPhoneNumber], [Website], [IsNotWebsite], [BusinessType], [FederalTaxID], [CertificationNumber], [CompanyDescription], [OwnerFirstName], [OwnerMiddleName], [OwnerLastName], [OwnerTitle], [OwnerEmail], [Gender], [PromoCode], [Ethnicity], [IsLGBTBE], [IsMBE], [IsSDVBE], [IsSBE], [IsVBE], [IsWBE], [IsCertified]) VALUES (1, N'Rohit', N'Bhardwaj', N'9898898989', N'rohit@gmail.com', N'test@123', N'LEgal Name', N'DBA', N'test add 1', N'test add 2', N'test city', N'AL', N'231312', N'9876543219', N'www.test.com', 0, NULL, N'1212', NULL, N'test', N'owner frst name', N'owner middle naem', N'owner last name', N'title', N'test2@gmail.com', N'Male', NULL, 1, 1, 0, 1, 0, 0, 0, 0)
INSERT [dbo].[OwnerInfo] ([ID], [FirstName], [LastName], [MobileNumber], [Email], [Password], [LegalBusinessName], [DBA], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [BusinessPhoneNumber], [Website], [IsNotWebsite], [BusinessType], [FederalTaxID], [CertificationNumber], [CompanyDescription], [OwnerFirstName], [OwnerMiddleName], [OwnerLastName], [OwnerTitle], [OwnerEmail], [Gender], [PromoCode], [Ethnicity], [IsLGBTBE], [IsMBE], [IsSDVBE], [IsSBE], [IsVBE], [IsWBE], [IsCertified]) VALUES (2, N'Rohit', N'Bhardwaj', N'9898898989', N'vinod@gmail.com', N'test@123', N'LEgal Name', N'DBA', N'test add 1', N'test add 2', N'test city', N'AL', N'231312', N'9876543219', N'www.test.com', 0, 1, N'1212', NULL, N'test desc', N'owner frst name', N'owner middle naem', N'owner last name', N'title', N'test2@gmail.com', N'Male', NULL, 1, 1, 0, 1, 0, 0, 0, 0)
INSERT [dbo].[OwnerInfo] ([ID], [FirstName], [LastName], [MobileNumber], [Email], [Password], [LegalBusinessName], [DBA], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [BusinessPhoneNumber], [Website], [IsNotWebsite], [BusinessType], [FederalTaxID], [CertificationNumber], [CompanyDescription], [OwnerFirstName], [OwnerMiddleName], [OwnerLastName], [OwnerTitle], [OwnerEmail], [Gender], [PromoCode], [Ethnicity], [IsLGBTBE], [IsMBE], [IsSDVBE], [IsSBE], [IsVBE], [IsWBE], [IsCertified]) VALUES (3, N'Rohit', N'Bhardwaj', N'9898898989', N'test@gmail.com', N'test@123', N'LEgal Name', N'dba', N'test add 1', N'test add 2', N'test city', N'AL', N'231312', N'9876543219', N'www.test.com', 0, 1, N'1212', NULL, N'test desc', N'owner frst name', N'owner middle naem', N'owner last name', N'title', N'test2@gmail.com', N'Male', NULL, 1, 1, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[OwnerInfo] ([ID], [FirstName], [LastName], [MobileNumber], [Email], [Password], [LegalBusinessName], [DBA], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [BusinessPhoneNumber], [Website], [IsNotWebsite], [BusinessType], [FederalTaxID], [CertificationNumber], [CompanyDescription], [OwnerFirstName], [OwnerMiddleName], [OwnerLastName], [OwnerTitle], [OwnerEmail], [Gender], [PromoCode], [Ethnicity], [IsLGBTBE], [IsMBE], [IsSDVBE], [IsSBE], [IsVBE], [IsWBE], [IsCertified]) VALUES (4, N'Rohit', N'Bhardwaj', N'9898898989', N'test1@gmail.com', N'test@123', N'test business name', N'dba', N'test add 1', N'test add 2', N'test city', N'AK', N'231312', N'9876543219', N'www.test.com', 0, 1, N'1212', NULL, N'test desc test', N'owner frst name', N'owner middle naem', N'owner last name', N'title', N'test2@gmail.com', N'Male', NULL, 1, 1, 0, 0, 0, 0, 0, 0)
SET IDENTITY_INSERT [dbo].[OwnerInfo] OFF
SET IDENTITY_INSERT [dbo].[OwnerLegalDocument] ON 

INSERT [dbo].[OwnerLegalDocument] ([ID], [OwnerID], [LegalDocument], [UploadedTime]) VALUES (1, 1, N'/images/OwnerLegalDocument/9803.jpg', CAST(N'2018-05-14T17:00:04.187' AS DateTime))
INSERT [dbo].[OwnerLegalDocument] ([ID], [OwnerID], [LegalDocument], [UploadedTime]) VALUES (2, 1, N'/images/OwnerLegalDocument/3994.jpg', CAST(N'2018-05-14T17:00:32.797' AS DateTime))
INSERT [dbo].[OwnerLegalDocument] ([ID], [OwnerID], [LegalDocument], [UploadedTime]) VALUES (3, 2, N'/images/OwnerLegalDocument/5683.jpg', CAST(N'2018-05-14T17:10:20.473' AS DateTime))
INSERT [dbo].[OwnerLegalDocument] ([ID], [OwnerID], [LegalDocument], [UploadedTime]) VALUES (4, 2, N'/images/OwnerLegalDocument/5994.jpg', CAST(N'2018-05-14T17:10:20.520' AS DateTime))
INSERT [dbo].[OwnerLegalDocument] ([ID], [OwnerID], [LegalDocument], [UploadedTime]) VALUES (5, 3, N'/images/OwnerLegalDocument/1452.jpg', CAST(N'2018-05-14T18:42:13.053' AS DateTime))
INSERT [dbo].[OwnerLegalDocument] ([ID], [OwnerID], [LegalDocument], [UploadedTime]) VALUES (6, 4, N'/images/OwnerLegalDocument/6031.jpg', CAST(N'2018-05-14T18:46:57.350' AS DateTime))
INSERT [dbo].[OwnerLegalDocument] ([ID], [OwnerID], [LegalDocument], [UploadedTime]) VALUES (7, 5, N'/images/OwnerLegalDocument/6451.jpg', CAST(N'2018-05-14T18:49:53.550' AS DateTime))
INSERT [dbo].[OwnerLegalDocument] ([ID], [OwnerID], [LegalDocument], [UploadedTime]) VALUES (8, 9, N'/images/OwnerLegalDocument/6791.jpg', CAST(N'2018-05-14T20:06:17.587' AS DateTime))
INSERT [dbo].[OwnerLegalDocument] ([ID], [OwnerID], [LegalDocument], [UploadedTime]) VALUES (1002, 1, N'/images/OwnerLegalDocument/7192.jpg', CAST(N'2018-05-21T17:21:12.640' AS DateTime))
SET IDENTITY_INSERT [dbo].[OwnerLegalDocument] OFF
SET IDENTITY_INSERT [dbo].[PromotionalCodes] ON 

INSERT [dbo].[PromotionalCodes] ([ID], [PromotionalCode], [Email], [IsApply], [ExpiryDate], [CreatedDate]) VALUES (1, N'ewqwdszadaswd', N'rohit@gmail.com', 0, CAST(N'2018-05-25T00:00:00.000' AS DateTime), CAST(N'2018-05-22T11:41:55.400' AS DateTime))
SET IDENTITY_INSERT [dbo].[PromotionalCodes] OFF
SET IDENTITY_INSERT [dbo].[State] ON 

INSERT [dbo].[State] ([ID], [StateName], [StateCode]) VALUES (1, N'Alabama', N'AL')
INSERT [dbo].[State] ([ID], [StateName], [StateCode]) VALUES (2, N'Alaska', N'AK')
INSERT [dbo].[State] ([ID], [StateName], [StateCode]) VALUES (3, N'Arizona', N'AZ')
INSERT [dbo].[State] ([ID], [StateName], [StateCode]) VALUES (4, N'Arkansas', N'AR')
INSERT [dbo].[State] ([ID], [StateName], [StateCode]) VALUES (5, N'California', N'CA')
INSERT [dbo].[State] ([ID], [StateName], [StateCode]) VALUES (6, N'Colorado', N'CO')
INSERT [dbo].[State] ([ID], [StateName], [StateCode]) VALUES (7, N'Connecticut', N'CT')
INSERT [dbo].[State] ([ID], [StateName], [StateCode]) VALUES (8, N'Delaware', N'DE')
INSERT [dbo].[State] ([ID], [StateName], [StateCode]) VALUES (9, N'Florida', N'FL')
INSERT [dbo].[State] ([ID], [StateName], [StateCode]) VALUES (10, N'Georgia', N'GA')
INSERT [dbo].[State] ([ID], [StateName], [StateCode]) VALUES (11, N'Hawaii', N'HI')
INSERT [dbo].[State] ([ID], [StateName], [StateCode]) VALUES (12, N'Idaho', N'ID')
INSERT [dbo].[State] ([ID], [StateName], [StateCode]) VALUES (13, N'Illinois', N'IL')
INSERT [dbo].[State] ([ID], [StateName], [StateCode]) VALUES (14, N'Indiana', N'IN')
INSERT [dbo].[State] ([ID], [StateName], [StateCode]) VALUES (15, N'Iowa', N'IA')
INSERT [dbo].[State] ([ID], [StateName], [StateCode]) VALUES (16, N'Kansas', N'KS')
INSERT [dbo].[State] ([ID], [StateName], [StateCode]) VALUES (17, N'Kentucky[E]', N'KY')
INSERT [dbo].[State] ([ID], [StateName], [StateCode]) VALUES (18, N'Louisiana', N'LA')
INSERT [dbo].[State] ([ID], [StateName], [StateCode]) VALUES (19, N'Maine', N'ME')
INSERT [dbo].[State] ([ID], [StateName], [StateCode]) VALUES (20, N'Maryland', N'MD')
INSERT [dbo].[State] ([ID], [StateName], [StateCode]) VALUES (21, N'Massachusetts[E]', N'MA')
INSERT [dbo].[State] ([ID], [StateName], [StateCode]) VALUES (22, N'American Samoa', N'AS')
INSERT [dbo].[State] ([ID], [StateName], [StateCode]) VALUES (23, N'Guam', N'GU')
INSERT [dbo].[State] ([ID], [StateName], [StateCode]) VALUES (24, N'Northern Mariana Islands', N'MP')
INSERT [dbo].[State] ([ID], [StateName], [StateCode]) VALUES (25, N'Puerto Rico', N'PR')
INSERT [dbo].[State] ([ID], [StateName], [StateCode]) VALUES (26, N'U.S. Virgin Islands', N'VI')
INSERT [dbo].[State] ([ID], [StateName], [StateCode]) VALUES (27, N'Baker Island', NULL)
INSERT [dbo].[State] ([ID], [StateName], [StateCode]) VALUES (28, N'Howland Island', NULL)
INSERT [dbo].[State] ([ID], [StateName], [StateCode]) VALUES (29, N'Jarvis Island', NULL)
INSERT [dbo].[State] ([ID], [StateName], [StateCode]) VALUES (30, N'Johnston Atoll', NULL)
INSERT [dbo].[State] ([ID], [StateName], [StateCode]) VALUES (31, N'Bajo Nuevo Bank (Petrel Island)', NULL)
INSERT [dbo].[State] ([ID], [StateName], [StateCode]) VALUES (32, N'Serranilla Bank', NULL)
SET IDENTITY_INSERT [dbo].[State] OFF
/****** Object:  StoredProcedure [dbo].[FilterOwner]    Script Date: 05/22/18 5:44:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- exec [dbo].[FilterOwner] 'test business name','AK','test desc test','LGBTBE'
-- =============================================
CREATE PROCEDURE [dbo].[FilterOwner]
	-- Add the parameters for the stored procedure here
		@BusinessName varchar(200),
		@BusinessDesc varchar(200),
		@State varchar(200),
		@DiversityCode varchar(200)=null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
select o.LegalBusinessName,o.CompanyDescription,o.City,o.[State],o.IsLGBTBE,o.OwnerFirstName,o.OwnerLastName,o.OwnerEmail,o.BusinessPhoneNumber,o.IsCertified from [dbo].[OwnerInfo] o where LegalBusinessName like '%'+@BusinessName +'%' OR CompanyDescription like '%'+@BusinessDesc +'%' OR [State] like '%'+@State +'%' 
END
GO
