package res

#aws_networkmonitor_monitor: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_networkmonitor_monitor")
	aggregation_period?: number
	arn?:                string
	id?:                 string
	monitor_name!:       string
	tags?: [string]: string
	tags_all?: [string]: string
}
