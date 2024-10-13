package data

#aws_cloudformation_stack: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_cloudformation_stack")
	capabilities?: [...string]
	description?:      string
	disable_rollback?: bool
	iam_role_arn?:     string
	id?:               string
	name!:             string
	notification_arns?: [...string]
	outputs?: [string]: string
	parameters?: [string]: string
	tags?: [string]: string
	template_body?:      string
	timeout_in_minutes?: number
}
