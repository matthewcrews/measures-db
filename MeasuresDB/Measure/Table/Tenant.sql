CREATE TABLE [Measure].[Tenant]
(
	[TenantId] INT identity(1, 1) PRIMARY KEY,
	TenantCode uniqueidentifier not null,
	TenantDesc nvarchar(500) null
)
go

create unique index udix_Tenant on [Measure].[Tenant] (TenantCode);
go
