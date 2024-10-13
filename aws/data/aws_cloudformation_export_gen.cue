package data

#aws_cloudformation_export: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_cloudformation_export")
	exporting_stack_id?: string
	id?:                 string
	name!:               string
	value?:              string
}
