CREATE TABLE [Measure].[ValueType]
(
	[ValueTypeId] INT identity(1, 1) PRIMARY KEY,
	TenantId int not null,
	ValueTypeCode nvarchar(50) not null,
	ValueTypeDesc nvarchar(500) null,
	foreign key (TenantId) references [Measure].[ValueType] (TenantId)
)
go

create unique index uidx_MetricValueType on [Measure].[ValueType] (TenantId, ValueTypeCode);
go

