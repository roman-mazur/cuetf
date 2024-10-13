package res

#aws_iam_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_iam_policy")
	arn?:              string
	attachment_count?: number
	description?:      string
	id?:               string
	name?:             string
	name_prefix?:      string
	path?:             string
	policy!:           string
	policy_id?:        string
	tags?: [string]: string
	tags_all?: [string]: string
}
