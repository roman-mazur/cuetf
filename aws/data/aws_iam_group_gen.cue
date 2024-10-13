package data

#aws_iam_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_iam_group")
	arn?:        string
	group_id?:   string
	group_name!: string
	id?:         string
	path?:       string
	users?: [...{
		arn?:       string
		path?:      string
		user_id?:   string
		user_name?: string
	}]
}
