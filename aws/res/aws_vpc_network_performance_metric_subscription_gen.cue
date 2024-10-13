package res

#aws_vpc_network_performance_metric_subscription: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_vpc_network_performance_metric_subscription")
	destination!: string
	id?:          string
	metric?:      string
	period?:      string
	source!:      string
	statistic?:   string
}
