CREATE TABLE [Measure].[MetricType]
(
	[MetricTypeId] INT identity(1, 1) PRIMARY KEY,
	TenantId int not null,
	MetricTypeCode nvarchar(50) not null,
	MetricTypeDesc nvarchar(500) null,
	foreign key (TenantId) references [Measure].[MetricType] (TenantId)
)
go

create unique index udix_MetricType on [Measure].[MetricType] (TenantId, MetricTypeCode);
go
