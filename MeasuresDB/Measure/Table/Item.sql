CREATE TABLE [Measure].[Item]
(
	[ItemId] INT identity(1, 1) PRIMARY KEY,
	TenantId int not null,
	ItemCode nvarchar(50) not null,
	ItemDesc nvarchar(500) null,
	foreign key (TenantId) references [Measure].[Item] (TenantId)
)
go

create unique index uidx_Item on [Measure].[Item] (TenantId, ItemCode);
go