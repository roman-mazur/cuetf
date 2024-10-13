package data

#aws_iam_user: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_iam_user")
	arn?:                  string
	id?:                   string
	path?:                 string
	permissions_boundary?: string
	tags?: [string]: string
	user_id?:   string
	user_name!: string
}
