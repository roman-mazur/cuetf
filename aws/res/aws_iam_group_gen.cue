package res

#aws_iam_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_iam_group")
	arn?:       string
	id?:        string
	name!:      string
	path?:      string
	unique_id?: string
}
