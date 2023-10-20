package res

#aws_redshiftserverless_usage_limit: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_redshiftserverless_usage_limit")
	amount:         number
	arn?:           string
	breach_action?: string
	id?:            string
	period?:        string
	resource_arn:   string
	usage_type:     string
}
