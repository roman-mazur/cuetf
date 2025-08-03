package res

#aws_networkmonitor_monitor: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_networkmonitor_monitor")
	close({
		aggregation_period?: number
		arn?:                string
		id?:                 string
		monitor_name!:       string
		region?:             string
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
