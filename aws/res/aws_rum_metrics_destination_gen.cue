package res

#aws_rum_metrics_destination: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_rum_metrics_destination")
	app_monitor_name!: string
	destination!:      string
	destination_arn?:  string
	iam_role_arn?:     string
	id?:               string
}
