package res

#aws_cloud9_environment_membership: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_cloud9_environment_membership")
	environment_id: string
	id?:            string
	permissions:    string
	user_arn:       string
	user_id?:       string
}
