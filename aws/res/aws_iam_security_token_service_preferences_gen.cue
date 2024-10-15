package res

#aws_iam_security_token_service_preferences: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_iam_security_token_service_preferences")
	global_endpoint_token_version!: string
	id?:                            string
}
