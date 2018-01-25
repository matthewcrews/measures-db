CREATE TABLE [Measure].[Service]
(
	[ServiceId] INT identity(1, 1) PRIMARY KEY,
	TenantId int not null,
	ServiceCode nvarchar(50) not null,
	ServiceDesc nvarchar(500) null,
	foreign key (TenantId) references [Measure].[Tenant] (TenantId)
)
go

create unique index uidx_Service on [Measure].[Service] (TenantId, ServiceCode);
go