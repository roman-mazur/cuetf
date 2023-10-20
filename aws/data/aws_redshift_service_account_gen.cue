package data

#aws_redshift_service_account: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_redshift_service_account")
	arn?:    string
	id?:     string
	region?: string
}
