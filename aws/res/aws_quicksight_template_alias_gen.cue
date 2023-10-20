package res

#aws_quicksight_template_alias: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_quicksight_template_alias")
	alias_name:              string
	arn?:                    string
	aws_account_id?:         string
	id?:                     string
	template_id:             string
	template_version_number: number
}
