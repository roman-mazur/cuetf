package res

#aws_inspector_resource_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_inspector_resource_group")
	arn?: string
	id?:  string
	tags!: [string]: string
}
