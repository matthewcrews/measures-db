CREATE TABLE [Measure].[Market]
(
	[MarketId] INT identity(1, 1) PRIMARY KEY,
	TenantId int not null,
	MarketCode nvarchar(50) not null,
	MarketDesc nvarchar(500) null,
	foreign key (TenantId) references [Measure].[Market] (TenantId)
)
go

create unique index uidx_Market on [Measure].[Market] (TenantId, MarketCode);
go