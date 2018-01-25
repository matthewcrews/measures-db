CREATE TABLE [Measure].[DataSet]
(
	[DataSetId] INT identity(1, 1) PRIMARY KEY,
	TenantId int not null,
	DataSetCode nvarchar(50) not null,
	DataSetDesc nvarchar(500) null,
	foreign key (TenantId) references [Measure].[DataSet] (TenantId)
)
go

create unique index uidx_DataSet on [Measure].[DataSet] (TenantId, DataSetCode);
go