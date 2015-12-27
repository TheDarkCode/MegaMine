if objectproperty(object_id('[dbo].[QuarryIngest]'), N'IsProcedure') = 1
	drop procedure [dbo].[QuarryIngest]
go
if objectproperty(object_id('[dbo].[ProductSummaryGet]'), N'IsProcedure') = 1
	drop procedure [dbo].[ProductSummaryGet]
go

if objectproperty(object_id('[dbo].[GetQuarrySummary]'), N'IsProcedure') = 1
	drop procedure [dbo].[GetQuarrySummary]
go

if objectproperty(object_id('[dbo].[FK__Yard__Quarry]'), N'IsConstraint') = 1
	alter table [dbo].[Yard] drop constraint [FK__Yard__Quarry]
go

if objectproperty(object_id('[dbo].[FK__Trip__Vehicle]'), N'IsConstraint') = 1
	alter table [dbo].[VehicleTrip] drop constraint [FK__Trip__Vehicle]
go

if objectproperty(object_id('[dbo].[FK__ServiceSparePartOrder__SparePartOrder]'), N'IsConstraint') = 1
	alter table [dbo].[VehicleServiceSparePartOrder] drop constraint [FK__ServiceSparePartOrder__SparePartOrder]
go

if objectproperty(object_id('[dbo].[FK__SerivceSparePartOrder__Service]'), N'IsConstraint') = 1
	alter table [dbo].[VehicleServiceSparePartOrder] drop constraint [FK__SerivceSparePartOrder__Service]
go

if objectproperty(object_id('[dbo].[FK__ServiceSparePart__SparePart]'), N'IsConstraint') = 1
	alter table [dbo].[VehicleServiceSparePart] drop constraint [FK__ServiceSparePart__SparePart]
go

if objectproperty(object_id('[dbo].[FK__ServiceSparePart__Service]'), N'IsConstraint') = 1
	alter table [dbo].[VehicleServiceSparePart] drop constraint [FK__ServiceSparePart__Service]
go

if objectproperty(object_id('[dbo].[FK__Service__Vehicle]'), N'IsConstraint') = 1
	alter table [dbo].[VehicleService] drop constraint [FK__Service__Vehicle]
go

if objectproperty(object_id('[dbo].[FK__Model__Manufacturer]'), N'IsConstraint') = 1
	alter table [dbo].[VehicleModel] drop constraint [FK__Model__Manufacturer]
go

if objectproperty(object_id('[dbo].[FK__Fuel__Vehicle]'), N'IsConstraint') = 1
	alter table [dbo].[VehicleFuel] drop constraint [FK__Fuel__Vehicle]
go

if objectproperty(object_id('[dbo].[FK__DriverAssignment__Vehicle]'), N'IsConstraint') = 1
	alter table [dbo].[VehicleDriverAssignment] drop constraint [FK__DriverAssignment__Vehicle]
go

if objectproperty(object_id('[dbo].[FK__DriverAssignment__Driver]'), N'IsConstraint') = 1
	alter table [dbo].[VehicleDriverAssignment] drop constraint [FK__DriverAssignment__Driver]
go

if objectproperty(object_id('[dbo].[FK__Vehicle__Type]'), N'IsConstraint') = 1
	alter table [dbo].[Vehicle] drop constraint [FK__Vehicle__Type]
go

if objectproperty(object_id('[dbo].[FK__Vehicle__Manufacturer]'), N'IsConstraint') = 1
	alter table [dbo].[Vehicle] drop constraint [FK__Vehicle__Manufacturer]
go

if objectproperty(object_id('[dbo].[FK__Vehicle__DriverAssignment]'), N'IsConstraint') = 1
	alter table [dbo].[Vehicle] drop constraint [FK__Vehicle__DriverAssignment]
go

if objectproperty(object_id('[dbo].'), N'IsConstraint') = 1
if objectproperty(object_id('[dbo].[FK__Vehicle__Driver]'), N'IsConstraint') = 1
	alter table [dbo].[Vehicle] drop constraint [FK__Vehicle__Driver]
go

if objectproperty(object_id('[dbo].[FK__SparePartOrder__SparePart]'), N'IsConstraint') = 1
	alter table [dbo].[SparePartOrder] drop constraint [FK__SparePartOrder__SparePart]
go

if objectproperty(object_id('[dbo].[FK__SparePartManufacturer_Manufacturer]'), N'IsConstraint') = 1
	alter table [dbo].[SparePartManufacturer] drop constraint [FK__SparePartManufacturer_Manufacturer]
go

if objectproperty(object_id('[dbo].[FK__SparePartManufacturer__SparePart]'), N'IsConstraint') = 1
	alter table [dbo].[SparePartManufacturer] drop constraint [FK__SparePartManufacturer__SparePart]
go

if objectproperty(object_id('[dbo].[FK__SparePartManufacturer__Model]'), N'IsConstraint') = 1
	alter table [dbo].[SparePartManufacturer] drop constraint [FK__SparePartManufacturer__Model]
go

if objectproperty(object_id('[dbo].[FK__QuarryMaterialType__Quarry]'), N'IsConstraint') = 1
	alter table [dbo].[QuarryMaterialColour] drop constraint [FK__QuarryMaterialType__Quarry]
go

if objectproperty(object_id('[dbo].[FK__QuarryMaterialType__MaterialColour]'), N'IsConstraint') = 1
	alter table [dbo].[QuarryMaterialColour] drop constraint [FK__QuarryMaterialType__MaterialColour]
go

if objectproperty(object_id('[dbo].'), N'IsConstraint') = 1
if objectproperty(object_id('[dbo].[FK__MaterialMovement__ToYard]'), N'IsConstraint') = 1
	alter table [dbo].[MaterialMovement] drop constraint [FK__MaterialMovement__ToYard]
go

if objectproperty(object_id('[dbo].[FK__MaterialMovement__Material]'), N'IsConstraint') = 1
	alter table [dbo].[MaterialMovement] drop constraint [FK__MaterialMovement__Material]
go

if objectproperty(object_id('[dbo].[FK__MaterialMovement__FromYard]'), N'IsConstraint') = 1
	alter table [dbo].[MaterialMovement] drop constraint [FK__MaterialMovement__FromYard]
go

if objectproperty(object_id('[dbo].[FK__Material__Quarry]'), N'IsConstraint') = 1
	alter table [dbo].[Material] drop constraint [FK__Material__Quarry]
go

if objectproperty(object_id('[dbo].[FK__Material__ProductType]'), N'IsConstraint') = 1
	alter table [dbo].[Material] drop constraint [FK__Material__ProductType]
go

if objectproperty(object_id('[dbo].[FK__Material__MaterialColour]'), N'IsConstraint') = 1
	alter table [dbo].[Material] drop constraint [FK__Material__MaterialColour]
go

if objectproperty(object_id('[dbo].[FK_AspNetUserRoles_AspNetUsers_UserId]'), N'IsConstraint') = 1
	alter table [dbo].[IdentityUserRole] drop constraint [FK_AspNetUserRoles_AspNetUsers_UserId]
go

if objectproperty(object_id('[dbo].[FK_AspNetUserRoles_AspNetRoles_RoleId]'), N'IsConstraint') = 1
	alter table [dbo].[IdentityUserRole] drop constraint [FK_AspNetUserRoles_AspNetRoles_RoleId]
go

if objectproperty(object_id('[dbo].[FK_AspNetUserLogins_AspNetUsers_UserId]'), N'IsConstraint') = 1
	alter table [dbo].[IdentityUserLogin] drop constraint [FK_AspNetUserLogins_AspNetUsers_UserId]
go

if objectproperty(object_id('[dbo].[FK_AspNetUserClaims_AspNetUsers_UserId]'), N'IsConstraint') = 1
	alter table [dbo].[IdentityUserClaim] drop constraint [FK_AspNetUserClaims_AspNetUsers_UserId]
go

if objectproperty(object_id('[dbo].[FK_AspNetRoleClaims_AspNetRoles_RoleId]'), N'IsConstraint') = 1
	alter table [dbo].[IdentityRoleClaim] drop constraint [FK_AspNetRoleClaims_AspNetRoles_RoleId]
go

if objectproperty(object_id('[dbo].[FK_IdentityPageClaim_IdentityPage]'), N'IsConstraint') = 1
	alter table [dbo].[IdentityPageClaim] drop constraint [FK_IdentityPageClaim_IdentityPage]
go

if objectproperty(object_id('[dbo].[FK_IdentityPageClaim_IdentityClaim]'), N'IsConstraint') = 1
	alter table [dbo].[IdentityPageClaim] drop constraint [FK_IdentityPageClaim_IdentityClaim]
go

if objectproperty(object_id('[dbo].[MaterialMovement]'), N'IsTable') = 1
	drop table [dbo].[MaterialMovement]
go

if objectproperty(object_id('[dbo].[Quarry]'), N'IsTable') = 1
	drop table [dbo].[Quarry]
go

if objectproperty(object_id('[dbo].[Yard]'), N'IsTable') = 1
	drop table [dbo].[Yard]
go

if objectproperty(object_id('[dbo].[VehicleType]'), N'IsTable') = 1
	drop table [dbo].[VehicleType]
go

if objectproperty(object_id('[dbo].[VehicleTrip]'), N'IsTable') = 1
	drop table [dbo].[VehicleTrip]
go

if objectproperty(object_id('[dbo].[VehicleServiceSparePartOrder]'), N'IsTable') = 1
	drop table [dbo].[VehicleServiceSparePartOrder]
go

if objectproperty(object_id('[dbo].[VehicleServiceSparePart]'), N'IsTable') = 1
	drop table [dbo].[VehicleServiceSparePart]
go

if objectproperty(object_id('[dbo].[VehicleService]'), N'IsTable') = 1
	drop table [dbo].[VehicleService]
go

if objectproperty(object_id('[dbo].[VehicleModel]'), N'IsTable') = 1
	drop table [dbo].[VehicleModel]
go

if objectproperty(object_id('[dbo].[VehicleManufacturer]'), N'IsTable') = 1
	drop table [dbo].[VehicleManufacturer]
go

if objectproperty(object_id('[dbo].[VehicleFuel]'), N'IsTable') = 1
	drop table [dbo].[VehicleFuel]
go

if objectproperty(object_id('[dbo].[VehicleDriverAssignment]'), N'IsTable') = 1
	drop table [dbo].[VehicleDriverAssignment]
go

if objectproperty(object_id('[dbo].[Vehicle]'), N'IsTable') = 1
	drop table [dbo].[Vehicle]
go

if objectproperty(object_id('[dbo].[VehicleDriver]'), N'IsTable') = 1
	drop table [dbo].[VehicleDriver]
go

if objectproperty(object_id('[dbo].[UserProfile]'), N'IsTable') = 1
	drop table [dbo].[UserProfile]
go

if objectproperty(object_id('[dbo].[UserCompany]'), N'IsTable') = 1
	drop table [dbo].[UserCompany]
go

if objectproperty(object_id('[dbo].[SparePartOrder]'), N'IsTable') = 1
	drop table [dbo].[SparePartOrder]
go

if objectproperty(object_id('[dbo].[SparePartManufacturer]'), N'IsTable') = 1
	drop table [dbo].[SparePartManufacturer]
go

if objectproperty(object_id('[dbo].[SparePart]'), N'IsTable') = 1
	drop table [dbo].[SparePart]
go

if objectproperty(object_id('[dbo].[QuarryMaterialColour]'), N'IsTable') = 1
	drop table [dbo].[QuarryMaterialColour]
go

if objectproperty(object_id('[dbo].[ProductType]'), N'IsTable') = 1
	drop table [dbo].[ProductType]
go

if objectproperty(object_id('[dbo].[MaterialColour]'), N'IsTable') = 1
	drop table [dbo].[MaterialColour]
go

if objectproperty(object_id('[dbo].[Material]'), N'IsTable') = 1
	drop table [dbo].[Material]
go

if objectproperty(object_id('[dbo].[IdentityUserRole]'), N'IsTable') = 1
	drop table [dbo].[IdentityUserRole]
go

if objectproperty(object_id('[dbo].[IdentityUserLogin]'), N'IsTable') = 1
	drop table [dbo].[IdentityUserLogin]
go

if objectproperty(object_id('[dbo].[IdentityUserClaim]'), N'IsTable') = 1
	drop table [dbo].[IdentityUserClaim]
go

if objectproperty(object_id('[dbo].[IdentityUser]'), N'IsTable') = 1
	drop table [dbo].[IdentityUser]
go

if objectproperty(object_id('[dbo].[IdentityRoleHierarchy]'), N'IsTable') = 1
	drop table [dbo].[IdentityRoleHierarchy]
go

if objectproperty(object_id('[dbo].[IdentityRoleClaim]'), N'IsTable') = 1
	drop table [dbo].[IdentityRoleClaim]
go

if objectproperty(object_id('[dbo].[IdentityRole]'), N'IsTable') = 1
	drop table [dbo].[IdentityRole]
go

if objectproperty(object_id('[dbo].[IdentityPageClaim]'), N'IsTable') = 1
	drop table [dbo].[IdentityPageClaim]
go

if objectproperty(object_id('[dbo].[IdentityPage]'), N'IsTable') = 1
	drop table [dbo].[IdentityPage]
go

if objectproperty(object_id('[dbo].[IdentityClaim]'), N'IsTable') = 1
	drop table [dbo].[IdentityClaim]
go

if objectproperty(object_id('[dbo].[Configuration]'), N'IsTable') = 1
drop table [dbo].[Configuration]
go

if objectproperty(object_id('[dbo].[Company]'), N'IsTable') = 1
	drop table [dbo].[Company]
go

if objectproperty(object_id('[dbo].[SplitCsv]'), N'IsTableFunction') = 1
	drop function [dbo].[SplitCsv]
go


/****** Object:  Table [dbo].[Company]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Company](
	[CompanyId] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](256) NOT NULL,
	[CompanyEmailAddress] [nvarchar](56) NULL,
	[CompanyPhoneNumber] [nvarchar](50) NULL,
	[GroupInd] [bit] NOT NULL CONSTRAINT [DF_Company_GroupInd]  DEFAULT ((0)),
	[ParentCompanyId] [int] NULL,
	[CreatedUserId] [nvarchar](200) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastModifiedUserId] [nvarchar](200) NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
	[DeletedInd] [bit] NOT NULL,
 CONSTRAINT [XPKCompany] PRIMARY KEY CLUSTERED 
(
	[CompanyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Configuration]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Configuration](
	[ConfigurationId] [int] NOT NULL,
	[ConfigKey] [nvarchar](128) NOT NULL,
	[ConfigValue] [nvarchar](128) NOT NULL,
	[CreatedUserId] [nvarchar](200) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastModifiedUserId] [nvarchar](200) NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
	[DeletedInd] [bit] NOT NULL,
	[CompanyId] [int] NOT NULL,
 CONSTRAINT [XPKConfiguration] PRIMARY KEY CLUSTERED 
(
	[ConfigurationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IdentityClaim]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdentityClaim](
	[Id] [int] NOT NULL,
	[ClaimType] [nvarchar](50) NOT NULL,
	[ClaimValue] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[IdentityPageEntityPageId] [int] NULL,
 CONSTRAINT [PK_IdentityClaim] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IdentityPage]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdentityPage](
	[PageId] [int] NOT NULL,
	[Text] [nvarchar](50) NOT NULL,
	[Url] [nvarchar](100) NULL,
	[CssClass] [nvarchar](50) NULL,
	[SpriteCssClass] [nvarchar](50) NULL,
	[Disabled] [nvarchar](10) NULL,
	[ParentId] [int] NULL,
	[MenuInd] [bit] NOT NULL CONSTRAINT [DF_IdentityMenu_MenuInd]  DEFAULT ((0)),
	[GroupMenuInd] [bit] NOT NULL,
	[DisplayOrder] [int] NOT NULL CONSTRAINT [DF_IdentityPage_DisplayOrder]  DEFAULT ((0)),
	[Controller] [nvarchar](50) NULL,
	[ActionMethod] [nvarchar](50) NULL,
 CONSTRAINT [PK_IdentityMenu] PRIMARY KEY CLUSTERED 
(
	[PageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IdentityPageClaim]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdentityPageClaim](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PageId] [int] NOT NULL,
	[ClaimId] [int] NOT NULL,
	[PrimaryClaimInd] [bit] NOT NULL,
 CONSTRAINT [PK_IdentityPageClaim] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IdentityRole]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdentityRole](
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[NormalizedName] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IdentityRoleClaim]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdentityRoleClaim](
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IdentityRoleHierarchy]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdentityRoleHierarchy](
	[RoleId] [nvarchar](200) NOT NULL,
	[ChildRoleId] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_IdentityRoleHierarchy] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC,
	[ChildRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IdentityUser]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdentityUser](
	[AccessFailedCount] [int] NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[Id] [nvarchar](450) NOT NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[NormalizedEmail] [nvarchar](max) NULL,
	[NormalizedUserName] [nvarchar](max) NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[UserName] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IdentityUserClaim]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdentityUserClaim](
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IdentityUserLogin]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdentityUserLogin](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[UserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IdentityUserRole]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdentityUserRole](
	[RoleId] [nvarchar](450) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Material]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Material](
	[MaterialId] [int] IDENTITY(1,1) NOT NULL,
	[QuarryId] [int] NOT NULL,
	[MaterialColourId] [int] NOT NULL,
	[ProductTypeId] [int] NOT NULL,
	[Dimensions] [nvarchar](500) NULL,
	[Length] [decimal](10, 5) NULL,
	[Width] [decimal](10, 5) NULL,
	[Height] [decimal](10, 5) NULL,
	[Weight] [decimal](10, 5) NULL,
	[MaterialDate] [datetime] NOT NULL,
	[CreatedUserId] [nvarchar](200) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastModifiedUserId] [nvarchar](200) NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
	[DeletedInd] [bit] NOT NULL,
	[CompanyId] [int] NOT NULL,
 CONSTRAINT [XPKMaterial] PRIMARY KEY CLUSTERED 
(
	[MaterialId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MaterialColour]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialColour](
	[MaterialColourId] [int] IDENTITY(1,1) NOT NULL,
	[ColourName] [nvarchar](100) NOT NULL,
	[ColourDescription] [nvarchar](200) NULL,
	[CreatedUserId] [nvarchar](200) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastModifiedUserId] [nvarchar](200) NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
	[DeletedInd] [bit] NOT NULL,
	[CompanyId] [int] NOT NULL,
 CONSTRAINT [XPKMaterialColourType] PRIMARY KEY CLUSTERED 
(
	[MaterialColourId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MaterialMovement]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialMovement](
	[MaterialMovementId] [int] IDENTITY(1,1) NOT NULL,
	[MaterialId] [int] NOT NULL,
	[FromYardId] [int] NOT NULL,
	[ToYardId] [int] NOT NULL,
	[MovementDate] [datetime] NOT NULL,
	[CurrentInd] [bit] NOT NULL,
	[CreatedUserId] [nvarchar](200) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastModifiedUserId] [nvarchar](200) NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
	[DeletedInd] [bit] NOT NULL,
	[CompanyId] [int] NOT NULL,
 CONSTRAINT [XPKMaterialMovement] PRIMARY KEY CLUSTERED 
(
	[MaterialMovementId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductType]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductType](
	[ProductTypeId] [int] IDENTITY(1,1) NOT NULL,
	[ProductTypeName] [nvarchar](100) NOT NULL,
	[ProductTypeDescription] [nvarchar](200) NULL,
	[DisplayOrder] [int] NULL,
	[Formula] [nvarchar](500) NULL,
	[FormulaOrder] [int] NULL,
	[CreatedUserId] [nvarchar](200) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastModifiedUserId] [nvarchar](200) NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
	[DeletedInd] [bit] NOT NULL,
	[CompanyId] [int] NOT NULL,
 CONSTRAINT [XPKProductType] PRIMARY KEY CLUSTERED 
(
	[ProductTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Quarry]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quarry](
	[QuarryId] [int] IDENTITY(1,1) NOT NULL,
	[QuarryName] [nvarchar](100) NOT NULL,
	[Location] [nvarchar](100) NULL,
	[YardInd] [bit] NULL,
	[CreatedUserId] [nvarchar](200) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastModifiedUserId] [nvarchar](200) NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
	[DeletedInd] [bit] NOT NULL,
	[CompanyId] [int] NOT NULL,
 CONSTRAINT [XPKQuarry] PRIMARY KEY CLUSTERED 
(
	[QuarryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QuarryMaterialColour]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuarryMaterialColour](
	[QuarryMaterialColourId] [int] IDENTITY(1,1) NOT NULL,
	[QuarryId] [int] NOT NULL,
	[MaterialColourId] [int] NOT NULL,
	[CreatedUserId] [nvarchar](200) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastModifiedUserId] [nvarchar](200) NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
	[DeletedInd] [bit] NOT NULL,
	[CompanyId] [int] NOT NULL,
 CONSTRAINT [XPKQuarryMaterialType] PRIMARY KEY CLUSTERED 
(
	[QuarryMaterialColourId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SparePart]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SparePart](
	[SparePartId] [int] IDENTITY(1,1) NOT NULL,
	[SparePartName] [nvarchar](32) NOT NULL,
	[SparePartDescription] [nvarchar](128) NULL,
	[ManufacturingBrand] [nvarchar](256) NULL,
	[AvailableQuantity] [int] NOT NULL,
	[CreatedUserId] [nvarchar](200) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastModifiedUserId] [nvarchar](200) NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
	[DeletedInd] [bit] NOT NULL,
	[CompanyId] [int] NOT NULL,
 CONSTRAINT [XPKSparePart] PRIMARY KEY CLUSTERED 
(
	[SparePartId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SparePartManufacturer]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SparePartManufacturer](
	[SparePartManufacturerId] [int] IDENTITY(1,1) NOT NULL,
	[SparePartId] [int] NOT NULL,
	[VehicleTypeId] [int] NULL,
	[VehicleManufacturerId] [int] NULL,
	[VehicleModelId] [int] NULL,
	[CreatedUserId] [nvarchar](200) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastModifiedUserId] [nvarchar](200) NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
	[DeletedInd] [bit] NOT NULL,
	[CompanyId] [int] NOT NULL,
 CONSTRAINT [XPKSparePartManufacturer] PRIMARY KEY CLUSTERED 
(
	[SparePartManufacturerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SparePartOrder]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SparePartOrder](
	[SparePartOrderId] [int] IDENTITY(1,1) NOT NULL,
	[SparePartId] [int] NOT NULL,
	[OrderedUnits] [int] NOT NULL,
	[ConsumedUnits] [int] NOT NULL CONSTRAINT [DF__SparePart__consu__34C8D9D1]  DEFAULT ((0)),
	[UnitCost] [numeric](8, 2) NOT NULL,
	[OrderedUTCdatetime] [datetime] NULL,
	[DeliveredUTCdatetime] [datetime] NULL,
	[FollowupEmailAddress] [nvarchar](320) NULL,
	[FollowupPhoneNum] [nvarchar](20) NULL,
	[CreatedUserId] [nvarchar](200) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastModifiedUserId] [nvarchar](200) NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
	[DeletedInd] [bit] NOT NULL,
	[CompanyId] [int] NOT NULL,
 CONSTRAINT [XPKSparePartOrder] PRIMARY KEY CLUSTERED 
(
	[SparePartOrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserCompany]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserCompany](
	[UserProfileId] [nvarchar](200) NOT NULL,
	[CompanyId] [int] NOT NULL,
 CONSTRAINT [PK_UserCompany] PRIMARY KEY CLUSTERED 
(
	[UserProfileId] ASC,
	[CompanyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserProfile]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserProfile](
	[UserProfileId] [nvarchar](200) NOT NULL,
	[FirstName] [nvarchar](256) NOT NULL,
	[LastName] [nvarchar](256) NOT NULL,
	[EmailAddress] [nvarchar](324) NOT NULL,
	[CreatedUserId] [nvarchar](200) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastModifiedUserId] [nvarchar](200) NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
	[DeletedInd] [bit] NOT NULL,
	[CompanyId] [int] NOT NULL,
 CONSTRAINT [XPKUserProfile] PRIMARY KEY CLUSTERED 
(
	[UserProfileId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Vehicle]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehicle](
	[VehicleId] [int] IDENTITY(1,1) NOT NULL,
	[RegistrationNumber] [nvarchar](32) NULL,
	[VehicleTypeId] [int] NOT NULL,
	[VehicleManufacturerId] [int] NOT NULL,
	[VehicleModelId] [int] NOT NULL,
	[LastServiceDate] [datetime] NULL,
	[TotalServiceCost] [numeric](8, 2) NOT NULL,
	[VehicleDriverId] [int] NULL,
	[VehicleDriverAssignmentId] [int] NULL,
	[FuelAverage] [numeric](8, 2) NULL,
	[FuelResetDate] [datetime] NULL,
	[CreatedUserId] [nvarchar](200) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastModifiedUserId] [nvarchar](200) NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
	[DeletedInd] [bit] NOT NULL,
	[CompanyId] [int] NOT NULL,
 CONSTRAINT [XPKVehicle] PRIMARY KEY CLUSTERED 
(
	[VehicleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VehicleDriver]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehicleDriver](
	[VehicleDriverId] [int] IDENTITY(1,1) NOT NULL,
	[DriverName] [nvarchar](128) NOT NULL,
	[Contact] [nvarchar](128) NULL,
	[PhotoUrl] [nvarchar](128) NULL,
	[CreatedUserId] [nvarchar](200) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastModifiedUserId] [nvarchar](200) NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
	[DeletedInd] [bit] NOT NULL,
	[CompanyId] [int] NOT NULL,
 CONSTRAINT [XPKVehicleDriver] PRIMARY KEY CLUSTERED 
(
	[VehicleDriverId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VehicleDriverAssignment]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehicleDriverAssignment](
	[VehicleDriverAssignmentId] [int] IDENTITY(1,1) NOT NULL,
	[VehicleId] [int] NOT NULL,
	[VehicleDriverId] [int] NOT NULL,
	[AssignmentStartDate] [datetime] NOT NULL,
	[AssignmentEndDate] [datetime] NULL,
	[CreatedUserId] [nvarchar](200) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastModifiedUserId] [nvarchar](200) NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
	[DeletedInd] [bit] NOT NULL,
	[CompanyId] [int] NOT NULL,
 CONSTRAINT [XPKVehicleDriverAssignment] PRIMARY KEY CLUSTERED 
(
	[VehicleDriverAssignmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VehicleFuel]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehicleFuel](
	[VehicleFuelId] [int] IDENTITY(1,1) NOT NULL,
	[VehicleId] [int] NOT NULL,
	[Odometer] [numeric](8, 2) NOT NULL,
	[Fuel] [numeric](8, 2) NOT NULL,
	[FuelDate] [datetime] NOT NULL,
	[CreatedUserId] [nvarchar](200) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastModifiedUserId] [nvarchar](200) NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
	[DeletedInd] [bit] NOT NULL,
	[CompanyId] [int] NOT NULL,
 CONSTRAINT [XPKVehicleFuel] PRIMARY KEY CLUSTERED 
(
	[VehicleFuelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VehicleManufacturer]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehicleManufacturer](
	[VehicleManufacturerId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Description] [nvarchar](128) NULL,
	[CreatedUserId] [nvarchar](200) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastModifiedUserId] [nvarchar](200) NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
	[DeletedInd] [bit] NOT NULL,
	[CompanyId] [int] NOT NULL,
 CONSTRAINT [XPKVehicleManufacturer] PRIMARY KEY CLUSTERED 
(
	[VehicleManufacturerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VehicleModel]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehicleModel](
	[VehicleModelId] [int] IDENTITY(1,1) NOT NULL,
	[VehicleManufacturerID] [int] NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Description] [nvarchar](128) NULL,
	[CreatedUserId] [nvarchar](200) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastModifiedUserId] [nvarchar](200) NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
	[DeletedInd] [bit] NOT NULL,
	[CompanyId] [int] NOT NULL,
 CONSTRAINT [XPKVehicleModel] PRIMARY KEY CLUSTERED 
(
	[VehicleModelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VehicleService]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehicleService](
	[VehicleServiceId] [int] IDENTITY(1,1) NOT NULL,
	[VehicleId] [int] NOT NULL,
	[Compliant] [nvarchar](256) NOT NULL,
	[ServiceStartDate] [datetime] NULL,
	[ServiceDeliveryDate] [datetime] NULL,
	[TotalServiceCost] [numeric](8, 2) NULL,
	[MiscServiceCost] [numeric](8, 2) NULL,
	[Description] [nvarchar](256) NULL,
	[CreatedUserId] [nvarchar](200) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastModifiedUserId] [nvarchar](200) NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
	[DeletedInd] [bit] NOT NULL,
	[CompanyId] [int] NOT NULL,
 CONSTRAINT [XPKVehicleService] PRIMARY KEY CLUSTERED 
(
	[VehicleServiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VehicleServiceSparePart]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehicleServiceSparePart](
	[VehicleServiceSparePartId] [int] IDENTITY(1,1) NOT NULL,
	[VehicleServiceId] [int] NOT NULL,
	[ConsumedUnits] [int] NOT NULL,
	[SparePartId] [int] NOT NULL,
	[CreatedUserId] [nvarchar](200) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastModifiedUserId] [nvarchar](200) NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
	[DeletedInd] [bit] NOT NULL,
	[CompanyId] [int] NOT NULL,
 CONSTRAINT [XPKVehicleServiceSparePart] PRIMARY KEY CLUSTERED 
(
	[VehicleServiceSparePartId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VehicleServiceSparePartOrder]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehicleServiceSparePartOrder](
	[VehicleServiceSparePartOrderId] [int] IDENTITY(1,1) NOT NULL,
	[VehicleServiceId] [int] NOT NULL,
	[ConsumedUnits] [int] NOT NULL,
	[SparePartOrderId] [int] NOT NULL,
	[CreatedUserId] [nvarchar](200) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastModifiedUserId] [nvarchar](200) NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
	[DeletedInd] [bit] NOT NULL,
	[CompanyId] [int] NOT NULL,
 CONSTRAINT [XPKVehicleServiceSparePartOrder] PRIMARY KEY CLUSTERED 
(
	[VehicleServiceSparePartOrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VehicleTrip]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehicleTrip](
	[VehicleTripId] [int] IDENTITY(1,1) NOT NULL,
	[VehicleId] [int] NOT NULL,
	[VehicleTripName] [nvarchar](256) NULL,
	[VehicleDriverId] [int] NULL,
	[OdometerStart] [numeric](8, 2) NULL,
	[OdometerEnd] [numeric](8, 2) NULL,
	[StartingTime] [datetime] NULL,
	[ReachingTime] [datetime] NULL,
	[CreatedUserId] [nvarchar](200) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastModifiedUserId] [nvarchar](200) NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
	[DeletedInd] [bit] NOT NULL,
	[CompanyId] [int] NOT NULL,
 CONSTRAINT [XPKVehicleTrip] PRIMARY KEY CLUSTERED 
(
	[VehicleTripId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VehicleType]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehicleType](
	[VehicleTypeId] [int] IDENTITY(1,1) NOT NULL,
	[VehicleTypeName] [nvarchar](128) NOT NULL,
	[VehicleTypeDescription] [nvarchar](128) NULL,
	[CreatedUserId] [nvarchar](200) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastModifiedUserId] [nvarchar](200) NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
	[DeletedInd] [bit] NOT NULL,
	[CompanyId] [int] NOT NULL,
 CONSTRAINT [XPKVehicleType] PRIMARY KEY CLUSTERED 
(
	[VehicleTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Yard]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Yard](
	[YardId] [int] IDENTITY(1,1) NOT NULL,
	[YardName] [nvarchar](100) NOT NULL,
	[Location] [nvarchar](200) NULL,
	[QuarryId] [int] NULL,
	[CreatedUserId] [nvarchar](200) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastModifiedUserId] [nvarchar](200) NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
	[DeletedInd] [bit] NOT NULL,
	[CompanyId] [int] NOT NULL,
 CONSTRAINT [XPKYard] PRIMARY KEY CLUSTERED 
(
	[YardId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[IdentityPageClaim]  WITH CHECK ADD  CONSTRAINT [FK_IdentityPageClaim_IdentityClaim] FOREIGN KEY([ClaimId])
REFERENCES [dbo].[IdentityClaim] ([Id])
GO
ALTER TABLE [dbo].[IdentityPageClaim] CHECK CONSTRAINT [FK_IdentityPageClaim_IdentityClaim]
GO
ALTER TABLE [dbo].[IdentityPageClaim]  WITH CHECK ADD  CONSTRAINT [FK_IdentityPageClaim_IdentityPage] FOREIGN KEY([PageId])
REFERENCES [dbo].[IdentityPage] ([PageId])
GO
ALTER TABLE [dbo].[IdentityPageClaim] CHECK CONSTRAINT [FK_IdentityPageClaim_IdentityPage]
GO
ALTER TABLE [dbo].[IdentityRoleClaim]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[IdentityRole] ([Id])
GO
ALTER TABLE [dbo].[IdentityRoleClaim] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[IdentityUserClaim]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[IdentityUser] ([Id])
GO
ALTER TABLE [dbo].[IdentityUserClaim] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[IdentityUserLogin]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[IdentityUser] ([Id])
GO
ALTER TABLE [dbo].[IdentityUserLogin] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[IdentityUserRole]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[IdentityRole] ([Id])
GO
ALTER TABLE [dbo].[IdentityUserRole] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[IdentityUserRole]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[IdentityUser] ([Id])
GO
ALTER TABLE [dbo].[IdentityUserRole] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Material]  WITH CHECK ADD  CONSTRAINT [FK__Material__MaterialColour] FOREIGN KEY([MaterialColourId])
REFERENCES [dbo].[MaterialColour] ([MaterialColourId])
GO
ALTER TABLE [dbo].[Material] CHECK CONSTRAINT [FK__Material__MaterialColour]
GO
ALTER TABLE [dbo].[Material]  WITH CHECK ADD  CONSTRAINT [FK__Material__ProductType] FOREIGN KEY([ProductTypeId])
REFERENCES [dbo].[ProductType] ([ProductTypeId])
GO
ALTER TABLE [dbo].[Material] CHECK CONSTRAINT [FK__Material__ProductType]
GO
ALTER TABLE [dbo].[Material]  WITH CHECK ADD  CONSTRAINT [FK__Material__Quarry] FOREIGN KEY([QuarryId])
REFERENCES [dbo].[Quarry] ([QuarryId])
GO
ALTER TABLE [dbo].[Material] CHECK CONSTRAINT [FK__Material__Quarry]
GO
ALTER TABLE [dbo].[MaterialMovement]  WITH CHECK ADD  CONSTRAINT [FK__MaterialMovement__FromYard] FOREIGN KEY([FromYardId])
REFERENCES [dbo].[Yard] ([YardId])
GO
ALTER TABLE [dbo].[MaterialMovement] CHECK CONSTRAINT [FK__MaterialMovement__FromYard]
GO
ALTER TABLE [dbo].[MaterialMovement]  WITH CHECK ADD  CONSTRAINT [FK__MaterialMovement__Material] FOREIGN KEY([MaterialId])
REFERENCES [dbo].[Material] ([MaterialId])
GO
ALTER TABLE [dbo].[MaterialMovement] CHECK CONSTRAINT [FK__MaterialMovement__Material]
GO
ALTER TABLE [dbo].[MaterialMovement]  WITH CHECK ADD  CONSTRAINT [FK__MaterialMovement__ToYard] FOREIGN KEY([ToYardId])
REFERENCES [dbo].[Yard] ([YardId])
GO
ALTER TABLE [dbo].[MaterialMovement] CHECK CONSTRAINT [FK__MaterialMovement__ToYard]
GO
ALTER TABLE [dbo].[QuarryMaterialColour]  WITH CHECK ADD  CONSTRAINT [FK__QuarryMaterialType__MaterialColour] FOREIGN KEY([MaterialColourId])
REFERENCES [dbo].[MaterialColour] ([MaterialColourId])
GO
ALTER TABLE [dbo].[QuarryMaterialColour] CHECK CONSTRAINT [FK__QuarryMaterialType__MaterialColour]
GO
ALTER TABLE [dbo].[QuarryMaterialColour]  WITH CHECK ADD  CONSTRAINT [FK__QuarryMaterialType__Quarry] FOREIGN KEY([QuarryId])
REFERENCES [dbo].[Quarry] ([QuarryId])
GO
ALTER TABLE [dbo].[QuarryMaterialColour] CHECK CONSTRAINT [FK__QuarryMaterialType__Quarry]
GO
ALTER TABLE [dbo].[SparePartManufacturer]  WITH CHECK ADD  CONSTRAINT [FK__SparePartManufacturer__Model] FOREIGN KEY([VehicleModelId])
REFERENCES [dbo].[VehicleModel] ([VehicleModelId])
GO
ALTER TABLE [dbo].[SparePartManufacturer] CHECK CONSTRAINT [FK__SparePartManufacturer__Model]
GO
ALTER TABLE [dbo].[SparePartManufacturer]  WITH CHECK ADD  CONSTRAINT [FK__SparePartManufacturer__SparePart] FOREIGN KEY([SparePartId])
REFERENCES [dbo].[SparePart] ([SparePartId])
GO
ALTER TABLE [dbo].[SparePartManufacturer] CHECK CONSTRAINT [FK__SparePartManufacturer__SparePart]
GO
ALTER TABLE [dbo].[SparePartManufacturer]  WITH CHECK ADD  CONSTRAINT [FK__SparePartManufacturer_Manufacturer] FOREIGN KEY([VehicleManufacturerId])
REFERENCES [dbo].[VehicleManufacturer] ([VehicleManufacturerId])
GO
ALTER TABLE [dbo].[SparePartManufacturer] CHECK CONSTRAINT [FK__SparePartManufacturer_Manufacturer]
GO
ALTER TABLE [dbo].[SparePartOrder]  WITH CHECK ADD  CONSTRAINT [FK__SparePartOrder__SparePart] FOREIGN KEY([SparePartId])
REFERENCES [dbo].[SparePart] ([SparePartId])
GO
ALTER TABLE [dbo].[SparePartOrder] CHECK CONSTRAINT [FK__SparePartOrder__SparePart]
GO
ALTER TABLE [dbo].[Vehicle]  WITH CHECK ADD  CONSTRAINT [FK__Vehicle__Driver] FOREIGN KEY([VehicleDriverId])
REFERENCES [dbo].[VehicleDriver] ([VehicleDriverId])
GO
ALTER TABLE [dbo].[Vehicle] CHECK CONSTRAINT [FK__Vehicle__Driver]
GO
ALTER TABLE [dbo].[Vehicle]  WITH CHECK ADD  CONSTRAINT [FK__Vehicle__DriverAssignment] FOREIGN KEY([VehicleDriverAssignmentId])
REFERENCES [dbo].[VehicleDriverAssignment] ([VehicleDriverAssignmentId])
GO
ALTER TABLE [dbo].[Vehicle] CHECK CONSTRAINT [FK__Vehicle__DriverAssignment]
GO
ALTER TABLE [dbo].[Vehicle]  WITH CHECK ADD  CONSTRAINT [FK__Vehicle__Manufacturer] FOREIGN KEY([VehicleManufacturerId])
REFERENCES [dbo].[VehicleManufacturer] ([VehicleManufacturerId])
GO
ALTER TABLE [dbo].[Vehicle] CHECK CONSTRAINT [FK__Vehicle__Manufacturer]
GO
ALTER TABLE [dbo].[Vehicle]  WITH CHECK ADD  CONSTRAINT [FK__Vehicle__Type] FOREIGN KEY([VehicleTypeId])
REFERENCES [dbo].[VehicleType] ([VehicleTypeId])
GO
ALTER TABLE [dbo].[Vehicle] CHECK CONSTRAINT [FK__Vehicle__Type]
GO
ALTER TABLE [dbo].[VehicleDriverAssignment]  WITH CHECK ADD  CONSTRAINT [FK__DriverAssignment__Driver] FOREIGN KEY([VehicleDriverId])
REFERENCES [dbo].[VehicleDriver] ([VehicleDriverId])
GO
ALTER TABLE [dbo].[VehicleDriverAssignment] CHECK CONSTRAINT [FK__DriverAssignment__Driver]
GO
ALTER TABLE [dbo].[VehicleDriverAssignment]  WITH CHECK ADD  CONSTRAINT [FK__DriverAssignment__Vehicle] FOREIGN KEY([VehicleId])
REFERENCES [dbo].[Vehicle] ([VehicleId])
GO
ALTER TABLE [dbo].[VehicleDriverAssignment] CHECK CONSTRAINT [FK__DriverAssignment__Vehicle]
GO
ALTER TABLE [dbo].[VehicleFuel]  WITH CHECK ADD  CONSTRAINT [FK__Fuel__Vehicle] FOREIGN KEY([VehicleId])
REFERENCES [dbo].[Vehicle] ([VehicleId])
GO
ALTER TABLE [dbo].[VehicleFuel] CHECK CONSTRAINT [FK__Fuel__Vehicle]
GO
ALTER TABLE [dbo].[VehicleModel]  WITH CHECK ADD  CONSTRAINT [FK__Model__Manufacturer] FOREIGN KEY([VehicleManufacturerID])
REFERENCES [dbo].[VehicleManufacturer] ([VehicleManufacturerId])
GO
ALTER TABLE [dbo].[VehicleModel] CHECK CONSTRAINT [FK__Model__Manufacturer]
GO
ALTER TABLE [dbo].[VehicleService]  WITH CHECK ADD  CONSTRAINT [FK__Service__Vehicle] FOREIGN KEY([VehicleId])
REFERENCES [dbo].[Vehicle] ([VehicleId])
GO
ALTER TABLE [dbo].[VehicleService] CHECK CONSTRAINT [FK__Service__Vehicle]
GO
ALTER TABLE [dbo].[VehicleServiceSparePart]  WITH CHECK ADD  CONSTRAINT [FK__ServiceSparePart__Service] FOREIGN KEY([VehicleServiceId])
REFERENCES [dbo].[VehicleService] ([VehicleServiceId])
GO
ALTER TABLE [dbo].[VehicleServiceSparePart] CHECK CONSTRAINT [FK__ServiceSparePart__Service]
GO
ALTER TABLE [dbo].[VehicleServiceSparePart]  WITH CHECK ADD  CONSTRAINT [FK__ServiceSparePart__SparePart] FOREIGN KEY([SparePartId])
REFERENCES [dbo].[SparePart] ([SparePartId])
GO
ALTER TABLE [dbo].[VehicleServiceSparePart] CHECK CONSTRAINT [FK__ServiceSparePart__SparePart]
GO
ALTER TABLE [dbo].[VehicleServiceSparePartOrder]  WITH CHECK ADD  CONSTRAINT [FK__SerivceSparePartOrder__Service] FOREIGN KEY([VehicleServiceId])
REFERENCES [dbo].[VehicleService] ([VehicleServiceId])
GO
ALTER TABLE [dbo].[VehicleServiceSparePartOrder] CHECK CONSTRAINT [FK__SerivceSparePartOrder__Service]
GO
ALTER TABLE [dbo].[VehicleServiceSparePartOrder]  WITH CHECK ADD  CONSTRAINT [FK__ServiceSparePartOrder__SparePartOrder] FOREIGN KEY([SparePartOrderId])
REFERENCES [dbo].[SparePartOrder] ([SparePartOrderId])
GO
ALTER TABLE [dbo].[VehicleServiceSparePartOrder] CHECK CONSTRAINT [FK__ServiceSparePartOrder__SparePartOrder]
GO
ALTER TABLE [dbo].[VehicleTrip]  WITH CHECK ADD  CONSTRAINT [FK__Trip__Vehicle] FOREIGN KEY([VehicleId])
REFERENCES [dbo].[Vehicle] ([VehicleId])
GO
ALTER TABLE [dbo].[VehicleTrip] CHECK CONSTRAINT [FK__Trip__Vehicle]
GO

ALTER TABLE [dbo].[Yard]  WITH CHECK ADD  CONSTRAINT [FK__Yard__Quarry] FOREIGN KEY([QuarryId])
	REFERENCES [dbo].[Quarry] ([QuarryId])
GO
ALTER TABLE [dbo].[Yard] CHECK CONSTRAINT [FK__Yard__Quarry]
GO
