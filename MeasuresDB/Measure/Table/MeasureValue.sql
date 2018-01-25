CREATE TABLE [Measure].[MeasureValue]
(
	[MetricValueId] INT identity(1, 1) PRIMARY KEY,
	TenantId int not null,
	ApplicationId int not null,
	MarketId int not null,
	ItemId int not null,
	DataSetId int not null,
	MetricTypeId int not null,
	ValueTypeId int not null,
	UnitsId int not null,
	MetricValue nvarchar(100) not null,
	CalcDateTime datetimeoffset not null,
	foreign key (TenantId) references [Measure].Tenant(TenantId),
	foreign key (ApplicationId) references [Measure].Service(ServiceId),
	foreign key (MarketId) references [Measure].Market(MarketId),
	foreign key (ItemId) references [Measure].Item(ItemId),
	foreign key (DataSetId) references [Measure].DataSet(DataSetId),
	foreign key (MetricTypeId) references [Measure].MetricType(MetricTypeId),
	foreign key (ValueTypeId) references [Measure].ValueType(ValueTypeId)
)
go

create unique index uidx_MetricValue on [Measure].[MeasureValue] (TenantId, ApplicationId, MarketId, ItemId, DataSetId, MetricTypeId);
go
