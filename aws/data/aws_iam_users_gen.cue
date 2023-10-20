package data

#aws_iam_users: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_iam_users")
	arns?: [...string]
	id?:         string
	name_regex?: string
	names?: [...string]
	path_prefix?: string
}
