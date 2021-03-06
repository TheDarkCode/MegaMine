SET IDENTITY_INSERT [dbo].[Company] ON 
GO
INSERT [dbo].[Company] ([CompanyId], [CompanyName], [CompanyEmailAddress], [CompanyPhoneNumber], [GroupInd], [ParentCompanyId], [CreatedUserId], [CreatedDate], [LastModifiedUserId], [LastModifiedDate], [DeletedInd]) VALUES (2, N'Nootus', NULL, NULL, 0, NULL, N'prasanna@nootus.com', CAST(N'2015-01-07 00:00:00.000' AS DateTime), N'prasanna@nootus.com', CAST(N'2015-01-07 00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[Company] ([CompanyId], [CompanyName], [CompanyEmailAddress], [CompanyPhoneNumber], [GroupInd], [ParentCompanyId], [CreatedUserId], [CreatedDate], [LastModifiedUserId], [LastModifiedDate], [DeletedInd]) VALUES (3, N'ARVG Speciality Mines (P) Ltd ', NULL, NULL, 1, NULL, N'prasanna@nootus.com', CAST(N'2015-07-01 00:00:00.000' AS DateTime), N'prasanna@nootus.com', CAST(N'2015-07-01 00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[Company] ([CompanyId], [CompanyName], [CompanyEmailAddress], [CompanyPhoneNumber], [GroupInd], [ParentCompanyId], [CreatedUserId], [CreatedDate], [LastModifiedUserId], [LastModifiedDate], [DeletedInd]) VALUES (4, N'Quartz Inc', NULL, NULL, 0, 3, N'prasanna@nootus.com', CAST(N'2015-07-01 00:00:00.000' AS DateTime), N'prasanna@nootus.com', CAST(N'2015-07-01 00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[Company] ([CompanyId], [CompanyName], [CompanyEmailAddress], [CompanyPhoneNumber], [GroupInd], [ParentCompanyId], [CreatedUserId], [CreatedDate], [LastModifiedUserId], [LastModifiedDate], [DeletedInd]) VALUES (5, N'Grana RIM', NULL, NULL, 0, 3, N'prasanna@nootus.com', CAST(N'2015-01-07 00:00:00.000' AS DateTime), N'prasanna@nootus.com', CAST(N'2015-01-07 00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[Company] ([CompanyId], [CompanyName], [CompanyEmailAddress], [CompanyPhoneNumber], [GroupInd], [ParentCompanyId], [CreatedUserId], [CreatedDate], [LastModifiedUserId], [LastModifiedDate], [DeletedInd]) VALUES (6, N'MNRC', NULL, NULL, 0, 3, N'prasanna@nootus.com', CAST(N'2015-01-07 00:00:00.000' AS DateTime), N'prasanna@nootus.com', CAST(N'2015-01-07 00:00:00.000' AS DateTime), 0)
GO
SET IDENTITY_INSERT [dbo].[Company] OFF
GO
INSERT [dbo].[IdentityClaim] ([Id], [ClaimType], [ClaimValue], [Description], [IdentityPageEntityPageId]) VALUES (1, N'Home', N'Anonymous', N'Default Anonymous', NULL)
GO
INSERT [dbo].[IdentityClaim] ([Id], [ClaimType], [ClaimValue], [Description], [IdentityPageEntityPageId]) VALUES (2, N'Fleet', N'VehicleView', N'Vehicle View', NULL)
GO
INSERT [dbo].[IdentityClaim] ([Id], [ClaimType], [ClaimValue], [Description], [IdentityPageEntityPageId]) VALUES (3, N'Fleet', N'VehicleTypeView', N'Vehicle Type View', NULL)
GO
INSERT [dbo].[IdentityClaim] ([Id], [ClaimType], [ClaimValue], [Description], [IdentityPageEntityPageId]) VALUES (4, N'Fleet', N'VehicleTypeEdit', N'Vehicle Type Edit', NULL)
GO
INSERT [dbo].[IdentityClaim] ([Id], [ClaimType], [ClaimValue], [Description], [IdentityPageEntityPageId]) VALUES (5, N'Fleet', N'VehicleTypeDelete', N'Vehicle Type Delete', NULL)
GO
INSERT [dbo].[IdentityClaim] ([Id], [ClaimType], [ClaimValue], [Description], [IdentityPageEntityPageId]) VALUES (6, N'Fleet', N'VehicleTypeAdd', N'Vehicle Type Add', NULL)
GO
INSERT [dbo].[IdentityClaim] ([Id], [ClaimType], [ClaimValue], [Description], [IdentityPageEntityPageId]) VALUES (7, N'Fleet', N'DriverView', N'Driver View', NULL)
GO
INSERT [dbo].[IdentityClaim] ([Id], [ClaimType], [ClaimValue], [Description], [IdentityPageEntityPageId]) VALUES (8, N'Fleet', N'DriverEdit', N'Driver Edit', NULL)
GO
INSERT [dbo].[IdentityClaim] ([Id], [ClaimType], [ClaimValue], [Description], [IdentityPageEntityPageId]) VALUES (9, N'Fleet', N'DriverDelete', N'Driver Delete', NULL)
GO
INSERT [dbo].[IdentityClaim] ([Id], [ClaimType], [ClaimValue], [Description], [IdentityPageEntityPageId]) VALUES (10, N'Fleet', N'DriverAdd', N'Driver Add', NULL)
GO
INSERT [dbo].[IdentityClaim] ([Id], [ClaimType], [ClaimValue], [Description], [IdentityPageEntityPageId]) VALUES (11, N'Fleet', N'ManufacturerView', N'Manufacturer View', NULL)
GO
INSERT [dbo].[IdentityClaim] ([Id], [ClaimType], [ClaimValue], [Description], [IdentityPageEntityPageId]) VALUES (12, N'Fleet', N'ManufacturerAdd', N'Manufacturer Add', NULL)
GO
INSERT [dbo].[IdentityClaim] ([Id], [ClaimType], [ClaimValue], [Description], [IdentityPageEntityPageId]) VALUES (13, N'Fleet', N'ManufacturerEdit', N'Manufacturer Edit', NULL)
GO
INSERT [dbo].[IdentityClaim] ([Id], [ClaimType], [ClaimValue], [Description], [IdentityPageEntityPageId]) VALUES (14, N'Fleet', N'ManufacturerModelAdd', N'Manufacturer Model Add', NULL)
GO
INSERT [dbo].[IdentityClaim] ([Id], [ClaimType], [ClaimValue], [Description], [IdentityPageEntityPageId]) VALUES (16, N'Fleet', N'ManufacturerModelEdit', N'Manufacturer Model Edit', NULL)
GO
INSERT [dbo].[IdentityClaim] ([Id], [ClaimType], [ClaimValue], [Description], [IdentityPageEntityPageId]) VALUES (17, N'Fleet', N'SparePartView', N'Spare Part View', NULL)
GO
INSERT [dbo].[IdentityClaim] ([Id], [ClaimType], [ClaimValue], [Description], [IdentityPageEntityPageId]) VALUES (18, N'Fleet', N'SparePartAdd', N'Spare Part Add', NULL)
GO
INSERT [dbo].[IdentityClaim] ([Id], [ClaimType], [ClaimValue], [Description], [IdentityPageEntityPageId]) VALUES (19, N'Fleet', N'SparePartEdit', N'Spare Part Edit', NULL)
GO
INSERT [dbo].[IdentityClaim] ([Id], [ClaimType], [ClaimValue], [Description], [IdentityPageEntityPageId]) VALUES (20, N'Fleet', N'SparePartOrderAdd', N'Spare Part Order Add', NULL)
GO
INSERT [dbo].[IdentityClaim] ([Id], [ClaimType], [ClaimValue], [Description], [IdentityPageEntityPageId]) VALUES (21, N'Fleet', N'SparePartOrderEdit', N'Spare Part Order Edit', NULL)
GO
INSERT [dbo].[IdentityClaim] ([Id], [ClaimType], [ClaimValue], [Description], [IdentityPageEntityPageId]) VALUES (22, N'Fleet', N'ServiceReport', N'Service Report', NULL)
GO
INSERT [dbo].[IdentityClaim] ([Id], [ClaimType], [ClaimValue], [Description], [IdentityPageEntityPageId]) VALUES (23, N'Fleet', N'VehicleAdd', N'Vehicle Add', NULL)
GO
INSERT [dbo].[IdentityClaim] ([Id], [ClaimType], [ClaimValue], [Description], [IdentityPageEntityPageId]) VALUES (25, N'Account', N'CompanyView', N'Company View', NULL)
GO
INSERT [dbo].[IdentityClaim] ([Id], [ClaimType], [ClaimValue], [Description], [IdentityPageEntityPageId]) VALUES (26, N'Fleet', N'VehicleServiceAdd', N'Vehicle Service Add', NULL)
GO
INSERT [dbo].[IdentityClaim] ([Id], [ClaimType], [ClaimValue], [Description], [IdentityPageEntityPageId]) VALUES (27, N'Fleet', N'VehicleServiceEdit', N'Vehicle Service Edit', NULL)
GO
INSERT [dbo].[IdentityClaim] ([Id], [ClaimType], [ClaimValue], [Description], [IdentityPageEntityPageId]) VALUES (28, N'Fleet', N'VehicleServiceView', N'Vehicle Service View', NULL)
GO
INSERT [dbo].[IdentityClaim] ([Id], [ClaimType], [ClaimValue], [Description], [IdentityPageEntityPageId]) VALUES (29, N'Fleet', N'VehicleFuelView', N'Vehicle Fuel View', NULL)
GO
INSERT [dbo].[IdentityClaim] ([Id], [ClaimType], [ClaimValue], [Description], [IdentityPageEntityPageId]) VALUES (30, N'Fleet', N'VehicleFuelAdd', N'Vehicle Fuel Add', NULL)
GO
INSERT [dbo].[IdentityClaim] ([Id], [ClaimType], [ClaimValue], [Description], [IdentityPageEntityPageId]) VALUES (31, N'Fleet', N'VehicleFuelEdit', N'Vehicle Fuel Edit', NULL)
GO
INSERT [dbo].[IdentityClaim] ([Id], [ClaimType], [ClaimValue], [Description], [IdentityPageEntityPageId]) VALUES (32, N'Fleet', N'VehicleDriverView', N'Vehicle Driver View', NULL)
GO
INSERT [dbo].[IdentityClaim] ([Id], [ClaimType], [ClaimValue], [Description], [IdentityPageEntityPageId]) VALUES (33, N'Fleet', N'VehicleDriverAdd', N'Vehicle Driver Add', NULL)
GO
INSERT [dbo].[IdentityClaim] ([Id], [ClaimType], [ClaimValue], [Description], [IdentityPageEntityPageId]) VALUES (34, N'Fleet', N'VehicleDriverEdit', N'Vehicle Driver Edit', NULL)
GO
INSERT [dbo].[IdentityClaim] ([Id], [ClaimType], [ClaimValue], [Description], [IdentityPageEntityPageId]) VALUES (35, N'Fleet', N'VehicleTripView', N'Vehicle Trip View', NULL)
GO
INSERT [dbo].[IdentityClaim] ([Id], [ClaimType], [ClaimValue], [Description], [IdentityPageEntityPageId]) VALUES (36, N'Fleet', N'VehicleTripEdit', N'VehicleTripEdit', NULL)
GO
INSERT [dbo].[IdentityClaim] ([Id], [ClaimType], [ClaimValue], [Description], [IdentityPageEntityPageId]) VALUES (37, N'Fleet', N'VehicleTripAdd', N'Vehicle Trip Add', NULL)
GO
INSERT [dbo].[IdentityClaim] ([Id], [ClaimType], [ClaimValue], [Description], [IdentityPageEntityPageId]) VALUES (38, N'Fleet', N'VehicleDriverAssign', N'Vehicle Driver Assign', NULL)
GO
INSERT [dbo].[IdentityClaim] ([Id], [ClaimType], [ClaimValue], [Description], [IdentityPageEntityPageId]) VALUES (39, N'Fleet', N'VehicleFuelReset', N'VehicleFuelReset', NULL)
GO
INSERT [dbo].[IdentityClaim] ([Id], [ClaimType], [ClaimValue], [Description], [IdentityPageEntityPageId]) VALUES (40, N'Fleet', N'VehicleEdit', N'Vehicle Edit', NULL)
GO
INSERT [dbo].[IdentityClaim] ([Id], [ClaimType], [ClaimValue], [Description], [IdentityPageEntityPageId]) VALUES (41, N'Quarry', N'MaterialColourView', N'Material Colour View', NULL)
GO
INSERT [dbo].[IdentityClaim] ([Id], [ClaimType], [ClaimValue], [Description], [IdentityPageEntityPageId]) VALUES (42, N'Quarry', N'MaterialColourEdit', N'Material Colour Edit', NULL)
GO
INSERT [dbo].[IdentityClaim] ([Id], [ClaimType], [ClaimValue], [Description], [IdentityPageEntityPageId]) VALUES (43, N'Quarry', N'MaterialColourAdd', N'Material Colour Add', NULL)
GO
INSERT [dbo].[IdentityClaim] ([Id], [ClaimType], [ClaimValue], [Description], [IdentityPageEntityPageId]) VALUES (44, N'Quarry', N'ProductTypeView', N'Product Type View', NULL)
GO
INSERT [dbo].[IdentityClaim] ([Id], [ClaimType], [ClaimValue], [Description], [IdentityPageEntityPageId]) VALUES (45, N'Quarry', N'ProductTypeEdit', N'Product Type Edit', NULL)
GO
INSERT [dbo].[IdentityClaim] ([Id], [ClaimType], [ClaimValue], [Description], [IdentityPageEntityPageId]) VALUES (46, N'Quarry', N'ProductTypeAdd', N'Product Type Add', NULL)
GO
INSERT [dbo].[IdentityClaim] ([Id], [ClaimType], [ClaimValue], [Description], [IdentityPageEntityPageId]) VALUES (47, N'Quarry', N'QuarryView', N'Quarry View', NULL)
GO
INSERT [dbo].[IdentityClaim] ([Id], [ClaimType], [ClaimValue], [Description], [IdentityPageEntityPageId]) VALUES (48, N'Quarry', N'QuarryEdit', N'Quarry Edit', NULL)
GO
INSERT [dbo].[IdentityClaim] ([Id], [ClaimType], [ClaimValue], [Description], [IdentityPageEntityPageId]) VALUES (49, N'Quarry', N'QuarryAdd', N'Quarry Add', NULL)
GO
INSERT [dbo].[IdentityClaim] ([Id], [ClaimType], [ClaimValue], [Description], [IdentityPageEntityPageId]) VALUES (50, N'Quarry', N'YardView', N'Yard View', NULL)
GO
INSERT [dbo].[IdentityClaim] ([Id], [ClaimType], [ClaimValue], [Description], [IdentityPageEntityPageId]) VALUES (51, N'Quarry', N'YardEdit', N'Yard Edit', NULL)
GO
INSERT [dbo].[IdentityClaim] ([Id], [ClaimType], [ClaimValue], [Description], [IdentityPageEntityPageId]) VALUES (52, N'Quarry', N'YardAdd', N'Yard Add', NULL)
GO
INSERT [dbo].[IdentityClaim] ([Id], [ClaimType], [ClaimValue], [Description], [IdentityPageEntityPageId]) VALUES (53, N'Quarry', N'MaterialSave', N'Material Save', NULL)
GO
INSERT [dbo].[IdentityClaim] ([Id], [ClaimType], [ClaimValue], [Description], [IdentityPageEntityPageId]) VALUES (54, N'Quarry', N'StockYardView', N'Stock Yard View', NULL)
GO
INSERT [dbo].[IdentityClaim] ([Id], [ClaimType], [ClaimValue], [Description], [IdentityPageEntityPageId]) VALUES (55, N'Quarry', N'MaterialMovement', N'Material Movement', NULL)
GO
INSERT [dbo].[IdentityClaim] ([Id], [ClaimType], [ClaimValue], [Description], [IdentityPageEntityPageId]) VALUES (56, N'Quarry', N'MaterialUpdate', N'Material Update', NULL)
GO
INSERT [dbo].[IdentityClaim] ([Id], [ClaimType], [ClaimValue], [Description], [IdentityPageEntityPageId]) VALUES (57, N'Quarry', N'QuarrySummary', N'Quarry Summary Report', NULL)
GO
INSERT [dbo].[IdentityClaim] ([Id], [ClaimType], [ClaimValue], [Description], [IdentityPageEntityPageId]) VALUES (58, N'Quarry', N'ProductSummary', N'Product Summary Report', NULL)
GO
INSERT [dbo].[IdentityClaim] ([Id], [ClaimType], [ClaimValue], [Description], [IdentityPageEntityPageId]) VALUES (59, N'Fleet', N'Anonymous', N'Fleet Anonymous', NULL)
GO
INSERT [dbo].[IdentityClaim] ([Id], [ClaimType], [ClaimValue], [Description], [IdentityPageEntityPageId]) VALUES (60, N'Quarry', N'Anonymous', N'Quarry Anonymous', NULL)
GO
INSERT [dbo].[IdentityClaim] ([Id], [ClaimType], [ClaimValue], [Description], [IdentityPageEntityPageId]) VALUES (61, N'Account', N'Anonymous', N'Account Anonymous', NULL)
GO
INSERT [dbo].[IdentityPage] ([PageId], [Text], [Url], [CssClass], [SpriteCssClass], [Disabled], [ParentId], [MenuInd], [GroupMenuInd], [DisplayOrder], [Controller], [ActionMethod]) VALUES (1, N'Fleet', N'#', NULL, N'icon-menu icon-fleet', NULL, NULL, 1, 0, 2, NULL, NULL)
GO
INSERT [dbo].[IdentityPage] ([PageId], [Text], [Url], [CssClass], [SpriteCssClass], [Disabled], [ParentId], [MenuInd], [GroupMenuInd], [DisplayOrder], [Controller], [ActionMethod]) VALUES (2, N'Vehicle List', N'/vehiclelist', NULL, N'icon-menu icon-vehiclelist', NULL, 1, 1, 0, 1, N'FleetController', N'VehicleList')
GO
INSERT [dbo].[IdentityPage] ([PageId], [Text], [Url], [CssClass], [SpriteCssClass], [Disabled], [ParentId], [MenuInd], [GroupMenuInd], [DisplayOrder], [Controller], [ActionMethod]) VALUES (3, N'Service Report', N'/servicereport', NULL, N'icon-menu icon-report', NULL, 1, 0, 0, 2, N'FleetController', N'VehicleServiceReportGet')
GO
INSERT [dbo].[IdentityPage] ([PageId], [Text], [Url], [CssClass], [SpriteCssClass], [Disabled], [ParentId], [MenuInd], [GroupMenuInd], [DisplayOrder], [Controller], [ActionMethod]) VALUES (4, N'Spare Parts', N'/sparepartlist', NULL, N'icon-menu icon-spareparts', NULL, 1, 0, 0, 3, N'FleetController', N'SparePartListGet')
GO
INSERT [dbo].[IdentityPage] ([PageId], [Text], [Url], [CssClass], [SpriteCssClass], [Disabled], [ParentId], [MenuInd], [GroupMenuInd], [DisplayOrder], [Controller], [ActionMethod]) VALUES (5, N'Administration', NULL, N'blank-menu-item', NULL, N'disabled', 1, 1, 1, 4, N'FleetController', NULL)
GO
INSERT [dbo].[IdentityPage] ([PageId], [Text], [Url], [CssClass], [SpriteCssClass], [Disabled], [ParentId], [MenuInd], [GroupMenuInd], [DisplayOrder], [Controller], [ActionMethod]) VALUES (6, N'Vehicle Types', N'/vehicletype', NULL, N'icon-menu icon-vehicletypes', NULL, 1, 1, 0, 5, N'FleetController', N'VehicleTypeListGet')
GO
INSERT [dbo].[IdentityPage] ([PageId], [Text], [Url], [CssClass], [SpriteCssClass], [Disabled], [ParentId], [MenuInd], [GroupMenuInd], [DisplayOrder], [Controller], [ActionMethod]) VALUES (7, N'Manufacturers', N'/manufacturerlist', NULL, N'icon-menu icon-manufacturer', NULL, 1, 1, 0, 6, N'FleetController', N'ManufacturersGet')
GO
INSERT [dbo].[IdentityPage] ([PageId], [Text], [Url], [CssClass], [SpriteCssClass], [Disabled], [ParentId], [MenuInd], [GroupMenuInd], [DisplayOrder], [Controller], [ActionMethod]) VALUES (8, N'Drivers', N'/driver', NULL, N'icon-menu icon-driver', NULL, 1, 1, 0, 7, N'FleetController', N'DriversGet')
GO
INSERT [dbo].[IdentityPage] ([PageId], [Text], [Url], [CssClass], [SpriteCssClass], [Disabled], [ParentId], [MenuInd], [GroupMenuInd], [DisplayOrder], [Controller], [ActionMethod]) VALUES (9, N'Quarry', N'#', NULL, N'icon-menu icon-quarry', NULL, NULL, 1, 0, 1, NULL, NULL)
GO
INSERT [dbo].[IdentityPage] ([PageId], [Text], [Url], [CssClass], [SpriteCssClass], [Disabled], [ParentId], [MenuInd], [GroupMenuInd], [DisplayOrder], [Controller], [ActionMethod]) VALUES (10, N'Quarries', N'/quarry', NULL, N'icon-menu icon-quarries', NULL, 9, 1, 0, 7, N'QuarryController', N'QuarriesGet')
GO
INSERT [dbo].[IdentityPage] ([PageId], [Text], [Url], [CssClass], [SpriteCssClass], [Disabled], [ParentId], [MenuInd], [GroupMenuInd], [DisplayOrder], [Controller], [ActionMethod]) VALUES (11, N'Yards', N'/yard', NULL, N'icon-menu icon-yards', NULL, 9, 1, 0, 8, N'QuarryController', N'YardsGet')
GO
INSERT [dbo].[IdentityPage] ([PageId], [Text], [Url], [CssClass], [SpriteCssClass], [Disabled], [ParentId], [MenuInd], [GroupMenuInd], [DisplayOrder], [Controller], [ActionMethod]) VALUES (12, N'Add Material', N'/material', NULL, N'icon-menu icon-addmaterial', NULL, 9, 1, 0, 3, N'QuarryController', N'MaterialSave')
GO
INSERT [dbo].[IdentityPage] ([PageId], [Text], [Url], [CssClass], [SpriteCssClass], [Disabled], [ParentId], [MenuInd], [GroupMenuInd], [DisplayOrder], [Controller], [ActionMethod]) VALUES (13, N'Material Movement', N'/materialmovement', NULL, N'icon-menu icon-movematerial', NULL, 9, 1, 0, 4, N'QuarryController', N'MoveMaterial')
GO
INSERT [dbo].[IdentityPage] ([PageId], [Text], [Url], [CssClass], [SpriteCssClass], [Disabled], [ParentId], [MenuInd], [GroupMenuInd], [DisplayOrder], [Controller], [ActionMethod]) VALUES (14, N'Stock at Yard', N'/stockyard', NULL, N'icon-menu icon-stockatyard', NULL, 9, 1, 0, 5, N'QuarryController', N'StockGet')
GO
INSERT [dbo].[IdentityPage] ([PageId], [Text], [Url], [CssClass], [SpriteCssClass], [Disabled], [ParentId], [MenuInd], [GroupMenuInd], [DisplayOrder], [Controller], [ActionMethod]) VALUES (15, N'Vehicle Details', NULL, NULL, NULL, NULL, 1, 0, 0, 0, N'FleetController', N'VehicleDetailsGet')
GO
INSERT [dbo].[IdentityPage] ([PageId], [Text], [Url], [CssClass], [SpriteCssClass], [Disabled], [ParentId], [MenuInd], [GroupMenuInd], [DisplayOrder], [Controller], [ActionMethod]) VALUES (16, N'Spare Part Details', NULL, NULL, NULL, NULL, 1, 0, 0, 0, N'FleetController', N'SparePartDetailsGet')
GO
INSERT [dbo].[IdentityPage] ([PageId], [Text], [Url], [CssClass], [SpriteCssClass], [Disabled], [ParentId], [MenuInd], [GroupMenuInd], [DisplayOrder], [Controller], [ActionMethod]) VALUES (17, N'Manufacturer Details', NULL, NULL, NULL, NULL, 1, 0, 0, 0, N'FleetController', N'ManufacturerDetailsGet')
GO
INSERT [dbo].[IdentityPage] ([PageId], [Text], [Url], [CssClass], [SpriteCssClass], [Disabled], [ParentId], [MenuInd], [GroupMenuInd], [DisplayOrder], [Controller], [ActionMethod]) VALUES (18, N'Vehicle Service Add', NULL, NULL, NULL, NULL, 1, 0, 0, 0, N'FleetController', N'VehicleServiceAdd')
GO
INSERT [dbo].[IdentityPage] ([PageId], [Text], [Url], [CssClass], [SpriteCssClass], [Disabled], [ParentId], [MenuInd], [GroupMenuInd], [DisplayOrder], [Controller], [ActionMethod]) VALUES (19, N'Vehicle Service Update', NULL, NULL, NULL, NULL, 1, 0, 0, 0, N'FleetController', N'VehicleServiceUpdate')
GO
INSERT [dbo].[IdentityPage] ([PageId], [Text], [Url], [CssClass], [SpriteCssClass], [Disabled], [ParentId], [MenuInd], [GroupMenuInd], [DisplayOrder], [Controller], [ActionMethod]) VALUES (20, N'Vehicle Service Get', NULL, NULL, NULL, NULL, 1, 0, 0, 0, N'FleetController', N'VehicleServiceGet')
GO
INSERT [dbo].[IdentityPage] ([PageId], [Text], [Url], [CssClass], [SpriteCssClass], [Disabled], [ParentId], [MenuInd], [GroupMenuInd], [DisplayOrder], [Controller], [ActionMethod]) VALUES (21, N'Spare Part Get', NULL, NULL, NULL, NULL, 1, 0, 0, 0, N'FleetController', N'SparePartGet')
GO
INSERT [dbo].[IdentityPage] ([PageId], [Text], [Url], [CssClass], [SpriteCssClass], [Disabled], [ParentId], [MenuInd], [GroupMenuInd], [DisplayOrder], [Controller], [ActionMethod]) VALUES (22, N'Spare Part Add', NULL, NULL, NULL, NULL, 1, 0, 0, 0, N'FleetController', N'SparePartSave')
GO
INSERT [dbo].[IdentityPage] ([PageId], [Text], [Url], [CssClass], [SpriteCssClass], [Disabled], [ParentId], [MenuInd], [GroupMenuInd], [DisplayOrder], [Controller], [ActionMethod]) VALUES (23, N'Spare Part Update', NULL, NULL, NULL, NULL, 1, 0, 0, 0, N'FleetController', N'SparePartUpdate')
GO
INSERT [dbo].[IdentityPage] ([PageId], [Text], [Url], [CssClass], [SpriteCssClass], [Disabled], [ParentId], [MenuInd], [GroupMenuInd], [DisplayOrder], [Controller], [ActionMethod]) VALUES (24, N'Vehicle Get', NULL, NULL, NULL, NULL, 1, 0, 0, 0, N'FleetController', N'VehicleGet')
GO
INSERT [dbo].[IdentityPage] ([PageId], [Text], [Url], [CssClass], [SpriteCssClass], [Disabled], [ParentId], [MenuInd], [GroupMenuInd], [DisplayOrder], [Controller], [ActionMethod]) VALUES (25, N'Vehicle Fuel Reset', NULL, NULL, NULL, NULL, 1, 0, 0, 0, N'FleetController', N'VehicleFuelReset')
GO
INSERT [dbo].[IdentityPage] ([PageId], [Text], [Url], [CssClass], [SpriteCssClass], [Disabled], [ParentId], [MenuInd], [GroupMenuInd], [DisplayOrder], [Controller], [ActionMethod]) VALUES (26, N'Vehicle Add', NULL, NULL, NULL, NULL, 1, 0, 0, 0, N'FleetController', N'VehicleAdd')
GO
INSERT [dbo].[IdentityPage] ([PageId], [Text], [Url], [CssClass], [SpriteCssClass], [Disabled], [ParentId], [MenuInd], [GroupMenuInd], [DisplayOrder], [Controller], [ActionMethod]) VALUES (27, N'Vehicle Update', NULL, NULL, NULL, NULL, 1, 0, 0, 0, N'FleetController', N'VehicleUpdate')
GO
INSERT [dbo].[IdentityPage] ([PageId], [Text], [Url], [CssClass], [SpriteCssClass], [Disabled], [ParentId], [MenuInd], [GroupMenuInd], [DisplayOrder], [Controller], [ActionMethod]) VALUES (28, N'Manufacturer Model Add', NULL, NULL, NULL, NULL, 1, 0, 0, 0, N'FleetController', N'ModelAdd')
GO
INSERT [dbo].[IdentityPage] ([PageId], [Text], [Url], [CssClass], [SpriteCssClass], [Disabled], [ParentId], [MenuInd], [GroupMenuInd], [DisplayOrder], [Controller], [ActionMethod]) VALUES (29, N'Manufacture Model Update', NULL, NULL, NULL, NULL, 1, 0, 0, 0, N'FleetController', N'ModelUpdate')
GO
INSERT [dbo].[IdentityPage] ([PageId], [Text], [Url], [CssClass], [SpriteCssClass], [Disabled], [ParentId], [MenuInd], [GroupMenuInd], [DisplayOrder], [Controller], [ActionMethod]) VALUES (30, N'Spare Part Order Get', NULL, NULL, NULL, NULL, 1, 0, 0, 0, N'FleetController', N'SparePartOrderGet')
GO
INSERT [dbo].[IdentityPage] ([PageId], [Text], [Url], [CssClass], [SpriteCssClass], [Disabled], [ParentId], [MenuInd], [GroupMenuInd], [DisplayOrder], [Controller], [ActionMethod]) VALUES (31, N'Spare Part Order Add', NULL, NULL, NULL, NULL, 1, 0, 0, 0, N'FleetController', N'SparePartOrderAdd')
GO
INSERT [dbo].[IdentityPage] ([PageId], [Text], [Url], [CssClass], [SpriteCssClass], [Disabled], [ParentId], [MenuInd], [GroupMenuInd], [DisplayOrder], [Controller], [ActionMethod]) VALUES (32, N'Spare Part Order Update', NULL, NULL, NULL, NULL, 1, 0, 0, 0, N'FleetController', N'SparePartOrderUpdate')
GO
INSERT [dbo].[IdentityPage] ([PageId], [Text], [Url], [CssClass], [SpriteCssClass], [Disabled], [ParentId], [MenuInd], [GroupMenuInd], [DisplayOrder], [Controller], [ActionMethod]) VALUES (33, N'Vehicle Type Add', NULL, NULL, NULL, NULL, 1, 0, 0, 0, N'FleetController', N'VehicleTypeAdd')
GO
INSERT [dbo].[IdentityPage] ([PageId], [Text], [Url], [CssClass], [SpriteCssClass], [Disabled], [ParentId], [MenuInd], [GroupMenuInd], [DisplayOrder], [Controller], [ActionMethod]) VALUES (34, N'Vehicle Type Update', NULL, NULL, NULL, NULL, 1, 0, 0, 0, N'FleetController', N'VehicleTypeUpdate')
GO
INSERT [dbo].[IdentityPage] ([PageId], [Text], [Url], [CssClass], [SpriteCssClass], [Disabled], [ParentId], [MenuInd], [GroupMenuInd], [DisplayOrder], [Controller], [ActionMethod]) VALUES (35, N'Drivers Dropdown Get', NULL, NULL, NULL, NULL, 1, 0, 0, 0, N'FleetController', N'DriversListGet')
GO
INSERT [dbo].[IdentityPage] ([PageId], [Text], [Url], [CssClass], [SpriteCssClass], [Disabled], [ParentId], [MenuInd], [GroupMenuInd], [DisplayOrder], [Controller], [ActionMethod]) VALUES (36, N'Driver Add', NULL, NULL, NULL, NULL, 1, 0, 0, 0, N'FleetController', N'DriverAdd')
GO
INSERT [dbo].[IdentityPage] ([PageId], [Text], [Url], [CssClass], [SpriteCssClass], [Disabled], [ParentId], [MenuInd], [GroupMenuInd], [DisplayOrder], [Controller], [ActionMethod]) VALUES (37, N'Driver Update', NULL, NULL, NULL, NULL, 1, 0, 0, 0, N'FleetController', N'DriverUpdate')
GO
INSERT [dbo].[IdentityPage] ([PageId], [Text], [Url], [CssClass], [SpriteCssClass], [Disabled], [ParentId], [MenuInd], [GroupMenuInd], [DisplayOrder], [Controller], [ActionMethod]) VALUES (38, N'Manufacturer Get', NULL, NULL, NULL, NULL, 1, 0, 0, 0, N'FleetController', N'ManufacturerGet')
GO
INSERT [dbo].[IdentityPage] ([PageId], [Text], [Url], [CssClass], [SpriteCssClass], [Disabled], [ParentId], [MenuInd], [GroupMenuInd], [DisplayOrder], [Controller], [ActionMethod]) VALUES (39, N'Manufacturer Add', NULL, NULL, NULL, NULL, 1, 0, 0, 0, N'FleetController', N'ManufacturerAdd')
GO
INSERT [dbo].[IdentityPage] ([PageId], [Text], [Url], [CssClass], [SpriteCssClass], [Disabled], [ParentId], [MenuInd], [GroupMenuInd], [DisplayOrder], [Controller], [ActionMethod]) VALUES (40, N'Manufacturer Update', NULL, NULL, NULL, NULL, 1, 0, 0, 0, N'FleetController', N'ManufacturerUpdate')
GO
INSERT [dbo].[IdentityPage] ([PageId], [Text], [Url], [CssClass], [SpriteCssClass], [Disabled], [ParentId], [MenuInd], [GroupMenuInd], [DisplayOrder], [Controller], [ActionMethod]) VALUES (41, N'Vehicle Fuel List', NULL, NULL, NULL, NULL, 1, 0, 0, 0, N'FleetController', N'FuelGetList')
GO
INSERT [dbo].[IdentityPage] ([PageId], [Text], [Url], [CssClass], [SpriteCssClass], [Disabled], [ParentId], [MenuInd], [GroupMenuInd], [DisplayOrder], [Controller], [ActionMethod]) VALUES (42, N'Vehicle Fuel Add', NULL, NULL, NULL, NULL, 1, 0, 0, 0, N'FleetController', N'FuelAdd')
GO
INSERT [dbo].[IdentityPage] ([PageId], [Text], [Url], [CssClass], [SpriteCssClass], [Disabled], [ParentId], [MenuInd], [GroupMenuInd], [DisplayOrder], [Controller], [ActionMethod]) VALUES (43, N'Vehicle Fuel Update', NULL, NULL, NULL, NULL, 1, 0, 0, 0, N'FleetController', N'FuelUpdate')
GO
INSERT [dbo].[IdentityPage] ([PageId], [Text], [Url], [CssClass], [SpriteCssClass], [Disabled], [ParentId], [MenuInd], [GroupMenuInd], [DisplayOrder], [Controller], [ActionMethod]) VALUES (44, N'Vehicle Driver List', NULL, NULL, NULL, NULL, 1, 0, 0, 0, N'FleetController', N'VehicleDriverGetList')
GO
INSERT [dbo].[IdentityPage] ([PageId], [Text], [Url], [CssClass], [SpriteCssClass], [Disabled], [ParentId], [MenuInd], [GroupMenuInd], [DisplayOrder], [Controller], [ActionMethod]) VALUES (45, N'Vehicle Driver Add', NULL, NULL, NULL, NULL, 1, 0, 0, 0, N'FleetController', N'VehicleDriverAdd')
GO
INSERT [dbo].[IdentityPage] ([PageId], [Text], [Url], [CssClass], [SpriteCssClass], [Disabled], [ParentId], [MenuInd], [GroupMenuInd], [DisplayOrder], [Controller], [ActionMethod]) VALUES (46, N'Vehicle Driver Update', NULL, NULL, NULL, NULL, 1, 0, 0, 0, N'FleetController', N'VehicleDriverUpdate')
GO
INSERT [dbo].[IdentityPage] ([PageId], [Text], [Url], [CssClass], [SpriteCssClass], [Disabled], [ParentId], [MenuInd], [GroupMenuInd], [DisplayOrder], [Controller], [ActionMethod]) VALUES (47, N'Vehicle Trip List Get', NULL, NULL, NULL, NULL, 1, 0, 0, 0, N'FleetController', N'VehicleTripListGet')
GO
INSERT [dbo].[IdentityPage] ([PageId], [Text], [Url], [CssClass], [SpriteCssClass], [Disabled], [ParentId], [MenuInd], [GroupMenuInd], [DisplayOrder], [Controller], [ActionMethod]) VALUES (48, N'Vehicle Trip Get', NULL, NULL, NULL, NULL, 1, 0, 0, 0, N'FleetController', N'VehicleTripGet')
GO
INSERT [dbo].[IdentityPage] ([PageId], [Text], [Url], [CssClass], [SpriteCssClass], [Disabled], [ParentId], [MenuInd], [GroupMenuInd], [DisplayOrder], [Controller], [ActionMethod]) VALUES (49, N'Vehicle Trip Add', NULL, NULL, NULL, NULL, 1, 0, 0, 0, N'FleetController', N'VehicleTripAdd')
GO
INSERT [dbo].[IdentityPage] ([PageId], [Text], [Url], [CssClass], [SpriteCssClass], [Disabled], [ParentId], [MenuInd], [GroupMenuInd], [DisplayOrder], [Controller], [ActionMethod]) VALUES (50, N'Vehicle Trip Update', NULL, NULL, NULL, NULL, 1, 0, 0, 0, N'FleetController', N'VehicleTripUpdate')
GO
INSERT [dbo].[IdentityPage] ([PageId], [Text], [Url], [CssClass], [SpriteCssClass], [Disabled], [ParentId], [MenuInd], [GroupMenuInd], [DisplayOrder], [Controller], [ActionMethod]) VALUES (51, N'Home', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, N'HomeController', N'Index')
GO
INSERT [dbo].[IdentityPage] ([PageId], [Text], [Url], [CssClass], [SpriteCssClass], [Disabled], [ParentId], [MenuInd], [GroupMenuInd], [DisplayOrder], [Controller], [ActionMethod]) VALUES (52, N'Default Profile', NULL, NULL, NULL, NULL, 51, 0, 0, 0, N'AccountController', N'DefaultProfile')
GO
INSERT [dbo].[IdentityPage] ([PageId], [Text], [Url], [CssClass], [SpriteCssClass], [Disabled], [ParentId], [MenuInd], [GroupMenuInd], [DisplayOrder], [Controller], [ActionMethod]) VALUES (53, N'Log out', NULL, NULL, NULL, NULL, 51, 0, 0, 0, N'AccountController', N'Logout')
GO
INSERT [dbo].[IdentityPage] ([PageId], [Text], [Url], [CssClass], [SpriteCssClass], [Disabled], [ParentId], [MenuInd], [GroupMenuInd], [DisplayOrder], [Controller], [ActionMethod]) VALUES (54, N'Log In', NULL, NULL, NULL, NULL, 51, 0, 0, 0, N'AccountController', N'Validate')
GO
INSERT [dbo].[IdentityPage] ([PageId], [Text], [Url], [CssClass], [SpriteCssClass], [Disabled], [ParentId], [MenuInd], [GroupMenuInd], [DisplayOrder], [Controller], [ActionMethod]) VALUES (55, N'Administration', NULL, N'blank-menu-item', NULL, N'disabled', 9, 1, 1, 6, N'QuarryController', NULL)
GO
INSERT [dbo].[IdentityPage] ([PageId], [Text], [Url], [CssClass], [SpriteCssClass], [Disabled], [ParentId], [MenuInd], [GroupMenuInd], [DisplayOrder], [Controller], [ActionMethod]) VALUES (56, N'Product Types', N'/producttype', NULL, N'icon-menu icon-stone', NULL, 9, 1, 0, 9, N'QuarryController', N'ProductTypesGet')
GO
INSERT [dbo].[IdentityPage] ([PageId], [Text], [Url], [CssClass], [SpriteCssClass], [Disabled], [ParentId], [MenuInd], [GroupMenuInd], [DisplayOrder], [Controller], [ActionMethod]) VALUES (57, N'Colours', N'/colour', NULL, N'icon-menu icon-colour', NULL, 9, 1, 0, 10, N'QuarryController', N'MaterialColoursGet')
GO
INSERT [dbo].[IdentityPage] ([PageId], [Text], [Url], [CssClass], [SpriteCssClass], [Disabled], [ParentId], [MenuInd], [GroupMenuInd], [DisplayOrder], [Controller], [ActionMethod]) VALUES (58, N'Material Colour Add', NULL, NULL, NULL, NULL, 9, 0, 0, 0, N'QuarryController', N'MaterialColourAdd')
GO
INSERT [dbo].[IdentityPage] ([PageId], [Text], [Url], [CssClass], [SpriteCssClass], [Disabled], [ParentId], [MenuInd], [GroupMenuInd], [DisplayOrder], [Controller], [ActionMethod]) VALUES (59, N'Material Colour Update', NULL, NULL, NULL, NULL, 9, 0, 0, 0, N'QuarryController', N'MaterialColourUpdate')
GO
INSERT [dbo].[IdentityPage] ([PageId], [Text], [Url], [CssClass], [SpriteCssClass], [Disabled], [ParentId], [MenuInd], [GroupMenuInd], [DisplayOrder], [Controller], [ActionMethod]) VALUES (60, N'Product Type Add', NULL, NULL, NULL, NULL, 9, 0, 0, 0, N'QuarryController', N'ProductTypeAdd')
GO
INSERT [dbo].[IdentityPage] ([PageId], [Text], [Url], [CssClass], [SpriteCssClass], [Disabled], [ParentId], [MenuInd], [GroupMenuInd], [DisplayOrder], [Controller], [ActionMethod]) VALUES (61, N'Product Type Update', NULL, NULL, NULL, NULL, 9, 0, 0, 0, N'QuarryController', N'ProductTypeUpdate')
GO
INSERT [dbo].[IdentityPage] ([PageId], [Text], [Url], [CssClass], [SpriteCssClass], [Disabled], [ParentId], [MenuInd], [GroupMenuInd], [DisplayOrder], [Controller], [ActionMethod]) VALUES (62, N'Quarry Add', NULL, NULL, NULL, NULL, 9, 0, 0, 0, N'QuarryController', N'QuarryAdd')
GO
INSERT [dbo].[IdentityPage] ([PageId], [Text], [Url], [CssClass], [SpriteCssClass], [Disabled], [ParentId], [MenuInd], [GroupMenuInd], [DisplayOrder], [Controller], [ActionMethod]) VALUES (63, N'Quarry Update', NULL, NULL, NULL, NULL, 9, 0, 0, 0, N'QuarryController', N'QuarryUpdate')
GO
INSERT [dbo].[IdentityPage] ([PageId], [Text], [Url], [CssClass], [SpriteCssClass], [Disabled], [ParentId], [MenuInd], [GroupMenuInd], [DisplayOrder], [Controller], [ActionMethod]) VALUES (64, N'Yard Add', NULL, NULL, NULL, NULL, 9, 0, 0, 0, N'QuarryController', N'YardAdd')
GO
INSERT [dbo].[IdentityPage] ([PageId], [Text], [Url], [CssClass], [SpriteCssClass], [Disabled], [ParentId], [MenuInd], [GroupMenuInd], [DisplayOrder], [Controller], [ActionMethod]) VALUES (65, N'Yard Update', NULL, NULL, NULL, NULL, 9, 0, 0, 0, N'QuarryController', N'YardUpdate')
GO
INSERT [dbo].[IdentityPage] ([PageId], [Text], [Url], [CssClass], [SpriteCssClass], [Disabled], [ParentId], [MenuInd], [GroupMenuInd], [DisplayOrder], [Controller], [ActionMethod]) VALUES (66, N'Material View Model', NULL, NULL, NULL, NULL, 9, 0, 0, 0, N'QuarryController', N'MaterialViewModelGet')
GO
INSERT [dbo].[IdentityPage] ([PageId], [Text], [Url], [CssClass], [SpriteCssClass], [Disabled], [ParentId], [MenuInd], [GroupMenuInd], [DisplayOrder], [Controller], [ActionMethod]) VALUES (67, N'Material Update', NULL, NULL, NULL, NULL, 9, 0, 0, 0, N'QuarryController', N'MaterialUpdate')
GO
INSERT [dbo].[IdentityPage] ([PageId], [Text], [Url], [CssClass], [SpriteCssClass], [Disabled], [ParentId], [MenuInd], [GroupMenuInd], [DisplayOrder], [Controller], [ActionMethod]) VALUES (68, N'Quarry Summary', N'/quarrysummary', NULL, N'icon-menu icon-colour', NULL, 9, 1, 0, 1, N'QuarryController', N'QuarrySummary')
GO
INSERT [dbo].[IdentityPage] ([PageId], [Text], [Url], [CssClass], [SpriteCssClass], [Disabled], [ParentId], [MenuInd], [GroupMenuInd], [DisplayOrder], [Controller], [ActionMethod]) VALUES (69, N'Quarry Summary Details', NULL, NULL, NULL, NULL, 9, 0, 0, 0, N'QuarryController', N'QuarrySummaryDetails')
GO
INSERT [dbo].[IdentityPage] ([PageId], [Text], [Url], [CssClass], [SpriteCssClass], [Disabled], [ParentId], [MenuInd], [GroupMenuInd], [DisplayOrder], [Controller], [ActionMethod]) VALUES (70, N'Product Summary', N'/productsummary', NULL, N'icon-menu icon-product-summary', NULL, 9, 1, 0, 2, N'QuarryController', N'ProductSummary')
GO
INSERT [dbo].[IdentityPage] ([PageId], [Text], [Url], [CssClass], [SpriteCssClass], [Disabled], [ParentId], [MenuInd], [GroupMenuInd], [DisplayOrder], [Controller], [ActionMethod]) VALUES (71, N'Product Summary Details', NULL, NULL, NULL, NULL, 9, 0, 0, 0, N'QuarryController', N'ProductSummaryDetails')
GO
INSERT [dbo].[IdentityPage] ([PageId], [Text], [Url], [CssClass], [SpriteCssClass], [Disabled], [ParentId], [MenuInd], [GroupMenuInd], [DisplayOrder], [Controller], [ActionMethod]) VALUES (72, N'Product Summary Search', NULL, NULL, NULL, NULL, 9, 0, 0, 0, N'QuarryController', N'ProductSummarySearch')
GO
INSERT [dbo].[IdentityPage] ([PageId], [Text], [Url], [CssClass], [SpriteCssClass], [Disabled], [ParentId], [MenuInd], [GroupMenuInd], [DisplayOrder], [Controller], [ActionMethod]) VALUES (73, N'Change Password', NULL, NULL, NULL, NULL, 51, 0, 0, 0, N'AccountController', N'ChangePassword')
GO
SET IDENTITY_INSERT [dbo].[IdentityPageClaim] ON 

GO
INSERT [dbo].[IdentityPageClaim] ([Id], [PageId], [ClaimId], [PrimaryClaimInd]) VALUES (96, 2, 2, 1)
GO
INSERT [dbo].[IdentityPageClaim] ([Id], [PageId], [ClaimId], [PrimaryClaimInd]) VALUES (97, 3, 22, 1)
GO
INSERT [dbo].[IdentityPageClaim] ([Id], [PageId], [ClaimId], [PrimaryClaimInd]) VALUES (98, 4, 17, 1)
GO
INSERT [dbo].[IdentityPageClaim] ([Id], [PageId], [ClaimId], [PrimaryClaimInd]) VALUES (99, 6, 3, 1)
GO
INSERT [dbo].[IdentityPageClaim] ([Id], [PageId], [ClaimId], [PrimaryClaimInd]) VALUES (100, 7, 11, 1)
GO
INSERT [dbo].[IdentityPageClaim] ([Id], [PageId], [ClaimId], [PrimaryClaimInd]) VALUES (101, 8, 7, 1)
GO
INSERT [dbo].[IdentityPageClaim] ([Id], [PageId], [ClaimId], [PrimaryClaimInd]) VALUES (102, 10, 47, 1)
GO
INSERT [dbo].[IdentityPageClaim] ([Id], [PageId], [ClaimId], [PrimaryClaimInd]) VALUES (103, 11, 50, 1)
GO
INSERT [dbo].[IdentityPageClaim] ([Id], [PageId], [ClaimId], [PrimaryClaimInd]) VALUES (104, 12, 53, 1)
GO
INSERT [dbo].[IdentityPageClaim] ([Id], [PageId], [ClaimId], [PrimaryClaimInd]) VALUES (105, 13, 55, 1)
GO
INSERT [dbo].[IdentityPageClaim] ([Id], [PageId], [ClaimId], [PrimaryClaimInd]) VALUES (106, 14, 54, 1)
GO
INSERT [dbo].[IdentityPageClaim] ([Id], [PageId], [ClaimId], [PrimaryClaimInd]) VALUES (107, 15, 2, 1)
GO
INSERT [dbo].[IdentityPageClaim] ([Id], [PageId], [ClaimId], [PrimaryClaimInd]) VALUES (108, 16, 17, 1)
GO
INSERT [dbo].[IdentityPageClaim] ([Id], [PageId], [ClaimId], [PrimaryClaimInd]) VALUES (109, 17, 11, 1)
GO
INSERT [dbo].[IdentityPageClaim] ([Id], [PageId], [ClaimId], [PrimaryClaimInd]) VALUES (110, 18, 26, 1)
GO
INSERT [dbo].[IdentityPageClaim] ([Id], [PageId], [ClaimId], [PrimaryClaimInd]) VALUES (111, 19, 27, 1)
GO
INSERT [dbo].[IdentityPageClaim] ([Id], [PageId], [ClaimId], [PrimaryClaimInd]) VALUES (112, 20, 28, 1)
GO
INSERT [dbo].[IdentityPageClaim] ([Id], [PageId], [ClaimId], [PrimaryClaimInd]) VALUES (113, 21, 17, 1)
GO
INSERT [dbo].[IdentityPageClaim] ([Id], [PageId], [ClaimId], [PrimaryClaimInd]) VALUES (114, 22, 18, 1)
GO
INSERT [dbo].[IdentityPageClaim] ([Id], [PageId], [ClaimId], [PrimaryClaimInd]) VALUES (115, 23, 19, 1)
GO
INSERT [dbo].[IdentityPageClaim] ([Id], [PageId], [ClaimId], [PrimaryClaimInd]) VALUES (116, 24, 2, 1)
GO
INSERT [dbo].[IdentityPageClaim] ([Id], [PageId], [ClaimId], [PrimaryClaimInd]) VALUES (117, 25, 39, 1)
GO
INSERT [dbo].[IdentityPageClaim] ([Id], [PageId], [ClaimId], [PrimaryClaimInd]) VALUES (118, 26, 23, 1)
GO
INSERT [dbo].[IdentityPageClaim] ([Id], [PageId], [ClaimId], [PrimaryClaimInd]) VALUES (119, 27, 40, 1)
GO
INSERT [dbo].[IdentityPageClaim] ([Id], [PageId], [ClaimId], [PrimaryClaimInd]) VALUES (120, 28, 14, 1)
GO
INSERT [dbo].[IdentityPageClaim] ([Id], [PageId], [ClaimId], [PrimaryClaimInd]) VALUES (121, 29, 16, 1)
GO
INSERT [dbo].[IdentityPageClaim] ([Id], [PageId], [ClaimId], [PrimaryClaimInd]) VALUES (122, 30, 17, 1)
GO
INSERT [dbo].[IdentityPageClaim] ([Id], [PageId], [ClaimId], [PrimaryClaimInd]) VALUES (123, 31, 20, 1)
GO
INSERT [dbo].[IdentityPageClaim] ([Id], [PageId], [ClaimId], [PrimaryClaimInd]) VALUES (124, 32, 21, 1)
GO
INSERT [dbo].[IdentityPageClaim] ([Id], [PageId], [ClaimId], [PrimaryClaimInd]) VALUES (125, 33, 6, 1)
GO
INSERT [dbo].[IdentityPageClaim] ([Id], [PageId], [ClaimId], [PrimaryClaimInd]) VALUES (126, 34, 4, 1)
GO
INSERT [dbo].[IdentityPageClaim] ([Id], [PageId], [ClaimId], [PrimaryClaimInd]) VALUES (127, 35, 32, 1)
GO
INSERT [dbo].[IdentityPageClaim] ([Id], [PageId], [ClaimId], [PrimaryClaimInd]) VALUES (128, 36, 10, 1)
GO
INSERT [dbo].[IdentityPageClaim] ([Id], [PageId], [ClaimId], [PrimaryClaimInd]) VALUES (129, 37, 8, 1)
GO
INSERT [dbo].[IdentityPageClaim] ([Id], [PageId], [ClaimId], [PrimaryClaimInd]) VALUES (130, 38, 11, 1)
GO
INSERT [dbo].[IdentityPageClaim] ([Id], [PageId], [ClaimId], [PrimaryClaimInd]) VALUES (131, 39, 12, 1)
GO
INSERT [dbo].[IdentityPageClaim] ([Id], [PageId], [ClaimId], [PrimaryClaimInd]) VALUES (132, 40, 13, 1)
GO
INSERT [dbo].[IdentityPageClaim] ([Id], [PageId], [ClaimId], [PrimaryClaimInd]) VALUES (133, 41, 29, 1)
GO
INSERT [dbo].[IdentityPageClaim] ([Id], [PageId], [ClaimId], [PrimaryClaimInd]) VALUES (134, 42, 30, 1)
GO
INSERT [dbo].[IdentityPageClaim] ([Id], [PageId], [ClaimId], [PrimaryClaimInd]) VALUES (135, 43, 31, 1)
GO
INSERT [dbo].[IdentityPageClaim] ([Id], [PageId], [ClaimId], [PrimaryClaimInd]) VALUES (136, 44, 32, 1)
GO
INSERT [dbo].[IdentityPageClaim] ([Id], [PageId], [ClaimId], [PrimaryClaimInd]) VALUES (137, 45, 33, 1)
GO
INSERT [dbo].[IdentityPageClaim] ([Id], [PageId], [ClaimId], [PrimaryClaimInd]) VALUES (138, 46, 34, 1)
GO
INSERT [dbo].[IdentityPageClaim] ([Id], [PageId], [ClaimId], [PrimaryClaimInd]) VALUES (139, 47, 35, 1)
GO
INSERT [dbo].[IdentityPageClaim] ([Id], [PageId], [ClaimId], [PrimaryClaimInd]) VALUES (140, 48, 35, 1)
GO
INSERT [dbo].[IdentityPageClaim] ([Id], [PageId], [ClaimId], [PrimaryClaimInd]) VALUES (141, 49, 37, 1)
GO
INSERT [dbo].[IdentityPageClaim] ([Id], [PageId], [ClaimId], [PrimaryClaimInd]) VALUES (142, 50, 36, 1)
GO
INSERT [dbo].[IdentityPageClaim] ([Id], [PageId], [ClaimId], [PrimaryClaimInd]) VALUES (143, 56, 44, 1)
GO
INSERT [dbo].[IdentityPageClaim] ([Id], [PageId], [ClaimId], [PrimaryClaimInd]) VALUES (144, 57, 41, 1)
GO
INSERT [dbo].[IdentityPageClaim] ([Id], [PageId], [ClaimId], [PrimaryClaimInd]) VALUES (145, 58, 43, 1)
GO
INSERT [dbo].[IdentityPageClaim] ([Id], [PageId], [ClaimId], [PrimaryClaimInd]) VALUES (146, 59, 42, 1)
GO
INSERT [dbo].[IdentityPageClaim] ([Id], [PageId], [ClaimId], [PrimaryClaimInd]) VALUES (147, 60, 46, 1)
GO
INSERT [dbo].[IdentityPageClaim] ([Id], [PageId], [ClaimId], [PrimaryClaimInd]) VALUES (148, 61, 45, 1)
GO
INSERT [dbo].[IdentityPageClaim] ([Id], [PageId], [ClaimId], [PrimaryClaimInd]) VALUES (149, 62, 49, 1)
GO
INSERT [dbo].[IdentityPageClaim] ([Id], [PageId], [ClaimId], [PrimaryClaimInd]) VALUES (150, 63, 48, 1)
GO
INSERT [dbo].[IdentityPageClaim] ([Id], [PageId], [ClaimId], [PrimaryClaimInd]) VALUES (151, 64, 52, 1)
GO
INSERT [dbo].[IdentityPageClaim] ([Id], [PageId], [ClaimId], [PrimaryClaimInd]) VALUES (152, 65, 51, 1)
GO
INSERT [dbo].[IdentityPageClaim] ([Id], [PageId], [ClaimId], [PrimaryClaimInd]) VALUES (153, 66, 53, 1)
GO
INSERT [dbo].[IdentityPageClaim] ([Id], [PageId], [ClaimId], [PrimaryClaimInd]) VALUES (154, 67, 56, 1)
GO
INSERT [dbo].[IdentityPageClaim] ([Id], [PageId], [ClaimId], [PrimaryClaimInd]) VALUES (155, 68, 57, 1)
GO
INSERT [dbo].[IdentityPageClaim] ([Id], [PageId], [ClaimId], [PrimaryClaimInd]) VALUES (156, 69, 57, 1)
GO
INSERT [dbo].[IdentityPageClaim] ([Id], [PageId], [ClaimId], [PrimaryClaimInd]) VALUES (157, 70, 58, 1)
GO
INSERT [dbo].[IdentityPageClaim] ([Id], [PageId], [ClaimId], [PrimaryClaimInd]) VALUES (158, 71, 58, 1)
GO
INSERT [dbo].[IdentityPageClaim] ([Id], [PageId], [ClaimId], [PrimaryClaimInd]) VALUES (159, 72, 58, 1)
GO
INSERT [dbo].[IdentityPageClaim] ([Id], [PageId], [ClaimId], [PrimaryClaimInd]) VALUES (160, 1, 59, 1)
GO
INSERT [dbo].[IdentityPageClaim] ([Id], [PageId], [ClaimId], [PrimaryClaimInd]) VALUES (161, 5, 59, 1)
GO
INSERT [dbo].[IdentityPageClaim] ([Id], [PageId], [ClaimId], [PrimaryClaimInd]) VALUES (162, 9, 60, 1)
GO
INSERT [dbo].[IdentityPageClaim] ([Id], [PageId], [ClaimId], [PrimaryClaimInd]) VALUES (163, 51, 1, 1)
GO
INSERT [dbo].[IdentityPageClaim] ([Id], [PageId], [ClaimId], [PrimaryClaimInd]) VALUES (164, 52, 1, 1)
GO
INSERT [dbo].[IdentityPageClaim] ([Id], [PageId], [ClaimId], [PrimaryClaimInd]) VALUES (165, 53, 61, 1)
GO
INSERT [dbo].[IdentityPageClaim] ([Id], [PageId], [ClaimId], [PrimaryClaimInd]) VALUES (166, 54, 61, 1)
GO
INSERT [dbo].[IdentityPageClaim] ([Id], [PageId], [ClaimId], [PrimaryClaimInd]) VALUES (167, 55, 60, 1)
GO
INSERT [dbo].[IdentityPageClaim] ([Id], [PageId], [ClaimId], [PrimaryClaimInd]) VALUES (168, 56, 57, 0)
GO
INSERT [dbo].[IdentityPageClaim] ([Id], [PageId], [ClaimId], [PrimaryClaimInd]) VALUES (169, 73, 61, 1)
GO
SET IDENTITY_INSERT [dbo].[IdentityPageClaim] OFF
GO
INSERT [dbo].[IdentityRole] ([ConcurrencyStamp], [Id], [Name], [NormalizedName]) VALUES (NULL, N'22c55674-01b1-4260-8dc9-325d46c94953', N'SuperAdmin', N'SUPERADMIN')
GO
INSERT [dbo].[IdentityRole] ([ConcurrencyStamp], [Id], [Name], [NormalizedName]) VALUES (NULL, N'2bead2a0-d99d-44c9-851b-6663d3d9a808', N'QuarryAdmin', N'QUARRYADMIN')
GO
INSERT [dbo].[IdentityRole] ([ConcurrencyStamp], [Id], [Name], [NormalizedName]) VALUES (NULL, N'2c0e2cc4-4f72-4408-8f0f-dca77c439439', N'GroupAdmin', N'GROUPADMIN')
GO
INSERT [dbo].[IdentityRole] ([ConcurrencyStamp], [Id], [Name], [NormalizedName]) VALUES (NULL, N'5ddcda7c-10fe-4d8e-853f-b02194841809', N'AccountAdmin', N'ACCOUNTADMIN')
GO
INSERT [dbo].[IdentityRole] ([ConcurrencyStamp], [Id], [Name], [NormalizedName]) VALUES (NULL, N'77abbab1-5797-4e6a-9b8a-d1052987a3c6', N'FleetSupervisor', N'FLEETSUPERVISOR')
GO
INSERT [dbo].[IdentityRole] ([ConcurrencyStamp], [Id], [Name], [NormalizedName]) VALUES (NULL, N'9e5d2a8d-e27e-42df-b729-ccb4ba9e0e90', N'CompanyAdmin', N'COMPANYADMIN')
GO
INSERT [dbo].[IdentityRole] ([ConcurrencyStamp], [Id], [Name], [NormalizedName]) VALUES (NULL, N'ad05da7c-e131-4abc-8dba-49e4b1777934', N'FleetAdmin', N'FLEETADMIN')
GO
SET IDENTITY_INSERT [dbo].[IdentityRoleClaim] ON 

GO
INSERT [dbo].[IdentityRoleClaim] ([ClaimType], [ClaimValue], [Id], [RoleId]) VALUES (N'Fleet', N'VehicleTypeView', 10, N'77abbab1-5797-4e6a-9b8a-d1052987a3c6')
GO
INSERT [dbo].[IdentityRoleClaim] ([ClaimType], [ClaimValue], [Id], [RoleId]) VALUES (N'Fleet', N'Administration', 11, N'77abbab1-5797-4e6a-9b8a-d1052987a3c6')
GO
INSERT [dbo].[IdentityRoleClaim] ([ClaimType], [ClaimValue], [Id], [RoleId]) VALUES (N'Fleet', N'VehicleTypeAdd', 12, N'77abbab1-5797-4e6a-9b8a-d1052987a3c6')
GO
INSERT [dbo].[IdentityRoleClaim] ([ClaimType], [ClaimValue], [Id], [RoleId]) VALUES (N'Fleet', N'ManufacturerView', 13, N'77abbab1-5797-4e6a-9b8a-d1052987a3c6')
GO
INSERT [dbo].[IdentityRoleClaim] ([ClaimType], [ClaimValue], [Id], [RoleId]) VALUES (N'Fleet', N'ManufacturerAdd', 14, N'77abbab1-5797-4e6a-9b8a-d1052987a3c6')
GO
INSERT [dbo].[IdentityRoleClaim] ([ClaimType], [ClaimValue], [Id], [RoleId]) VALUES (N'Fleet', N'ManufacturerModelAdd', 15, N'77abbab1-5797-4e6a-9b8a-d1052987a3c6')
GO
INSERT [dbo].[IdentityRoleClaim] ([ClaimType], [ClaimValue], [Id], [RoleId]) VALUES (N'Fleet', N'DriverView', 16, N'77abbab1-5797-4e6a-9b8a-d1052987a3c6')
GO
INSERT [dbo].[IdentityRoleClaim] ([ClaimType], [ClaimValue], [Id], [RoleId]) VALUES (N'Fleet', N'DriverAdd', 17, N'77abbab1-5797-4e6a-9b8a-d1052987a3c6')
GO
INSERT [dbo].[IdentityRoleClaim] ([ClaimType], [ClaimValue], [Id], [RoleId]) VALUES (N'Fleet', N'SparePartView', 18, N'77abbab1-5797-4e6a-9b8a-d1052987a3c6')
GO
INSERT [dbo].[IdentityRoleClaim] ([ClaimType], [ClaimValue], [Id], [RoleId]) VALUES (N'Fleet', N'SparePartAdd', 19, N'77abbab1-5797-4e6a-9b8a-d1052987a3c6')
GO
INSERT [dbo].[IdentityRoleClaim] ([ClaimType], [ClaimValue], [Id], [RoleId]) VALUES (N'Fleet', N'SparePartOrderAdd', 20, N'77abbab1-5797-4e6a-9b8a-d1052987a3c6')
GO
INSERT [dbo].[IdentityRoleClaim] ([ClaimType], [ClaimValue], [Id], [RoleId]) VALUES (N'Fleet', N'VehicleView', 21, N'77abbab1-5797-4e6a-9b8a-d1052987a3c6')
GO
INSERT [dbo].[IdentityRoleClaim] ([ClaimType], [ClaimValue], [Id], [RoleId]) VALUES (N'Fleet', N'VehicleAdd', 22, N'77abbab1-5797-4e6a-9b8a-d1052987a3c6')
GO
INSERT [dbo].[IdentityRoleClaim] ([ClaimType], [ClaimValue], [Id], [RoleId]) VALUES (N'Fleet', N'VehicleServiceView', 23, N'77abbab1-5797-4e6a-9b8a-d1052987a3c6')
GO
INSERT [dbo].[IdentityRoleClaim] ([ClaimType], [ClaimValue], [Id], [RoleId]) VALUES (N'Fleet', N'VehicleServiceAdd', 24, N'77abbab1-5797-4e6a-9b8a-d1052987a3c6')
GO
INSERT [dbo].[IdentityRoleClaim] ([ClaimType], [ClaimValue], [Id], [RoleId]) VALUES (N'Fleet', N'VehicleFuelView', 25, N'77abbab1-5797-4e6a-9b8a-d1052987a3c6')
GO
INSERT [dbo].[IdentityRoleClaim] ([ClaimType], [ClaimValue], [Id], [RoleId]) VALUES (N'Fleet', N'VehicleFuelAdd', 26, N'77abbab1-5797-4e6a-9b8a-d1052987a3c6')
GO
INSERT [dbo].[IdentityRoleClaim] ([ClaimType], [ClaimValue], [Id], [RoleId]) VALUES (N'Fleet', N'VehicleDriverView', 27, N'77abbab1-5797-4e6a-9b8a-d1052987a3c6')
GO
INSERT [dbo].[IdentityRoleClaim] ([ClaimType], [ClaimValue], [Id], [RoleId]) VALUES (N'Fleet', N'VehicleDriverAssign', 28, N'77abbab1-5797-4e6a-9b8a-d1052987a3c6')
GO
INSERT [dbo].[IdentityRoleClaim] ([ClaimType], [ClaimValue], [Id], [RoleId]) VALUES (N'Fleet', N'VehicleDriverAdd', 29, N'77abbab1-5797-4e6a-9b8a-d1052987a3c6')
GO
INSERT [dbo].[IdentityRoleClaim] ([ClaimType], [ClaimValue], [Id], [RoleId]) VALUES (N'Fleet', N'VehicleTripView', 30, N'77abbab1-5797-4e6a-9b8a-d1052987a3c6')
GO
INSERT [dbo].[IdentityRoleClaim] ([ClaimType], [ClaimValue], [Id], [RoleId]) VALUES (N'Fleet', N'VehicleTripAdd', 31, N'77abbab1-5797-4e6a-9b8a-d1052987a3c6')
GO
SET IDENTITY_INSERT [dbo].[IdentityRoleClaim] OFF
GO
INSERT [dbo].[IdentityRoleHierarchy] ([RoleId], [ChildRoleId]) VALUES (N'22c55674-01b1-4260-8dc9-325d46c94953', N'2c0e2cc4-4f72-4408-8f0f-dca77c439439')
GO
INSERT [dbo].[IdentityRoleHierarchy] ([RoleId], [ChildRoleId]) VALUES (N'2c0e2cc4-4f72-4408-8f0f-dca77c439439', N'9e5d2a8d-e27e-42df-b729-ccb4ba9e0e90')
GO
INSERT [dbo].[IdentityRoleHierarchy] ([RoleId], [ChildRoleId]) VALUES (N'9e5d2a8d-e27e-42df-b729-ccb4ba9e0e90', N'2bead2a0-d99d-44c9-851b-6663d3d9a808')
GO
INSERT [dbo].[IdentityRoleHierarchy] ([RoleId], [ChildRoleId]) VALUES (N'9e5d2a8d-e27e-42df-b729-ccb4ba9e0e90', N'5ddcda7c-10fe-4d8e-853f-b02194841809')
GO
INSERT [dbo].[IdentityRoleHierarchy] ([RoleId], [ChildRoleId]) VALUES (N'9e5d2a8d-e27e-42df-b729-ccb4ba9e0e90', N'ad05da7c-e131-4abc-8dba-49e4b1777934')
GO
INSERT [dbo].[IdentityUser] ([AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [Id], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (0, N'cd9141b8-7cc0-4454-b8be-575b7b6dc7b1', N'megamine@nootus.com', 0, N'73758135-4aba-498e-a01c-22c0fdc6b1e9', 0, NULL, N'MEGAMINE@NOOTUS.COM', N'MEGAMINE@NOOTUS.COM', N'AQAAAAEAACcQAAAAEC943PIRKbUl1sljqb9zjOVgYNjjzYu9tPFUJBFjcAdfbEOm2InrRz9lylK4VVRlSw==', NULL, 0, N'3a7f6a0b-6584-4923-8926-eacc64a4bc23', 0, N'megamine@nootus.com')
GO
INSERT [dbo].[IdentityUser] ([AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [Id], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (0, N'bada5ecd-1ba1-454d-9f1f-75c2d5bf276b', N'prasanna@nootus.com', 0, N'ce9a8077-48b2-41d7-8574-ca457392de31', 0, NULL, NULL, N'PRASANNA@NOOTUS.COM', N'AQAAAAEAACcQAAAAEC943PIRKbUl1sljqb9zjOVgYNjjzYu9tPFUJBFjcAdfbEOm2InrRz9lylK4VVRlSw==', NULL, 0, N'a9d8cd26-fee2-44ee-8987-360a51c97127', 0, N'prasanna@nootus.com')
GO
SET IDENTITY_INSERT [dbo].[IdentityUserClaim] ON 

GO
INSERT [dbo].[IdentityUserClaim] ([ClaimType], [ClaimValue], [Id], [UserId]) VALUES (N'FirstName', N'Prasanna', 8, N'ce9a8077-48b2-41d7-8574-ca457392de31')
GO
INSERT [dbo].[IdentityUserClaim] ([ClaimType], [ClaimValue], [Id], [UserId]) VALUES (N'LastName', N'Pattam', 9, N'ce9a8077-48b2-41d7-8574-ca457392de31')
GO
INSERT [dbo].[IdentityUserClaim] ([ClaimType], [ClaimValue], [Id], [UserId]) VALUES (N'Companies', N'1,3,4,5,6', 19, N'ce9a8077-48b2-41d7-8574-ca457392de31')
GO
INSERT [dbo].[IdentityUserClaim] ([ClaimType], [ClaimValue], [Id], [UserId]) VALUES (N'CompanyId', N'1', 20, N'ce9a8077-48b2-41d7-8574-ca457392de31')
GO
INSERT [dbo].[IdentityUserClaim] ([ClaimType], [ClaimValue], [Id], [UserId]) VALUES (N'FirstName', N'MegaMine', 21, N'73758135-4aba-498e-a01c-22c0fdc6b1e9')
GO
INSERT [dbo].[IdentityUserClaim] ([ClaimType], [ClaimValue], [Id], [UserId]) VALUES (N'LastName', N'Nootus', 22, N'73758135-4aba-498e-a01c-22c0fdc6b1e9')
GO
INSERT [dbo].[IdentityUserClaim] ([ClaimType], [ClaimValue], [Id], [UserId]) VALUES (N'Companies', N'1', 23, N'73758135-4aba-498e-a01c-22c0fdc6b1e9')
GO
INSERT [dbo].[IdentityUserClaim] ([ClaimType], [ClaimValue], [Id], [UserId]) VALUES (N'CompanyId', N'1', 24, N'73758135-4aba-498e-a01c-22c0fdc6b1e9')
GO
INSERT [dbo].[IdentityUserClaim] ([ClaimType], [ClaimValue], [Id], [UserId]) VALUES (N'Quarry', N'QuarrySummary', 26, N'ce9a8077-48b2-41d7-8574-ca457392de31')
GO
INSERT [dbo].[IdentityUserClaim] ([ClaimType], [ClaimValue], [Id], [UserId]) VALUES (N'Fleet', N'DriverView', 28, N'ce9a8077-48b2-41d7-8574-ca457392de31')
GO
SET IDENTITY_INSERT [dbo].[IdentityUserClaim] OFF
GO
INSERT [dbo].[IdentityUserRole] ([RoleId], [UserId]) VALUES (N'9e5d2a8d-e27e-42df-b729-ccb4ba9e0e90', N'73758135-4aba-498e-a01c-22c0fdc6b1e9')
GO
INSERT [dbo].[IdentityUserRole] ([RoleId], [UserId]) VALUES (N'22c55674-01b1-4260-8dc9-325d46c94953', N'ce9a8077-48b2-41d7-8574-ca457392de31')
GO
INSERT [dbo].[UserCompany] ([UserProfileId], [CompanyId]) VALUES (N'ce9a8077-48b2-41d7-8574-ca457392de31', 3)
GO
INSERT [dbo].[UserCompany] ([UserProfileId], [CompanyId]) VALUES (N'ce9a8077-48b2-41d7-8574-ca457392de31', 4)
GO
INSERT [dbo].[UserCompany] ([UserProfileId], [CompanyId]) VALUES (N'ce9a8077-48b2-41d7-8574-ca457392de31', 5)
GO
INSERT [dbo].[UserCompany] ([UserProfileId], [CompanyId]) VALUES (N'ce9a8077-48b2-41d7-8574-ca457392de31', 6)
GO
INSERT [dbo].[UserProfile] ([UserProfileId], [FirstName], [LastName], [EmailAddress], [CreatedUserId], [CreatedDate], [LastModifiedUserId], [LastModifiedDate], [DeletedInd], [CompanyId]) VALUES (N'73758135-4aba-498e-a01c-22c0fdc6b1e9', N'Mega', N'Mine', N'megamine@nootus.com', N'Manual', CAST(N'2015-08-13 00:00:00.000' AS DateTime), N'Manual', CAST(N'2015-08-13 00:00:00.000' AS DateTime), 0, 1)
GO
INSERT [dbo].[UserProfile] ([UserProfileId], [FirstName], [LastName], [EmailAddress], [CreatedUserId], [CreatedDate], [LastModifiedUserId], [LastModifiedDate], [DeletedInd], [CompanyId]) VALUES (N'ce9a8077-48b2-41d7-8574-ca457392de31', N'Prasanna', N'Pattam', N'prasanna@nootus.com', N'Manual', CAST(N'2015-07-01 00:00:00.000' AS DateTime), N'Manual', CAST(N'2015-07-01 00:00:00.000' AS DateTime), 0, 1)
GO
