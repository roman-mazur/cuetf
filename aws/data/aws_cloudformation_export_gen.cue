package data

#aws_cloudformation_export: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cloudformation_export")
	close({
		exporting_stack_id?: string
		id?:                 string
		name!:               string
		region?:             string
		value?:              string
	})
}
