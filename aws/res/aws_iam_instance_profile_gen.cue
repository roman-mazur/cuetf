package res

#aws_iam_instance_profile: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_iam_instance_profile")
	arn?:         string
	create_date?: string
	id?:          string
	name?:        string
	name_prefix?: string
	path?:        string
	role?:        string
	tags?: [string]:     string
	tags_all?: [string]: string
	unique_id?: string
}
