CREATE TABLE [Measure].[Units]
(
	[UnitsId] INT identity(1, 1) PRIMARY KEY,
	TenantId int not null,
	UnitsCode nvarchar(50) not null,
	UnitsDesc nvarchar(500) null,
	foreign key (TenantId) references [Measure].[Units] (TenantId)
)
go

create unique index uidx_Units on [Measure].[Units] (TenantId, UnitsCode);
go

