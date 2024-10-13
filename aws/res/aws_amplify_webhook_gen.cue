package res

#aws_amplify_webhook: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_amplify_webhook")
	app_id!:      string
	arn?:         string
	branch_name!: string
	description?: string
	id?:          string
	url?:         string
}
