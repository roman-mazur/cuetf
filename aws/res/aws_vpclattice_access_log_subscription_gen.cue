package res

#aws_vpclattice_access_log_subscription: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_vpclattice_access_log_subscription")
	arn?:                string
	destination_arn:     string
	id?:                 string
	resource_arn?:       string
	resource_identifier: string
	tags?: [string]: string
	tags_all?: [string]: string
}
