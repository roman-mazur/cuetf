package res

#aws_cloudwatch_dashboard: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_cloudwatch_dashboard")
	dashboard_arn?:  string
	dashboard_body!: string
	dashboard_name!: string
	id?:             string
}
