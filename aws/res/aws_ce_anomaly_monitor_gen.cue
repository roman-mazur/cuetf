package res

#aws_ce_anomaly_monitor: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ce_anomaly_monitor")
	arn?:                   string
	id?:                    string
	monitor_dimension?:     string
	monitor_specification?: string
	monitor_type!:          string
	name!:                  string
	tags?: [string]:     string
	tags_all?: [string]: string
}
