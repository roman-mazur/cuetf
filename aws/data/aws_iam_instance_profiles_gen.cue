package data

#aws_iam_instance_profiles: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_iam_instance_profiles")
	arns?: [...string]
	id?: string
	names?: [...string]
	paths?: [...string]
	role_name: string
}
