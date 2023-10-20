package data

#aws_iam_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_iam_policy")
	arn?:         string
	description?: string
	id?:          string
	name?:        string
	path?:        string
	path_prefix?: string
	policy?:      string
	policy_id?:   string
	tags?: [string]: string
}
