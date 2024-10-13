package res

#aws_securityhub_standards_subscription: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_securityhub_standards_subscription")
	id?:            string
	standards_arn!: string
}
