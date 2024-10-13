package data

#aws_lakeformation_resource: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_lakeformation_resource")
	arn!:           string
	id?:            string
	last_modified?: string
	role_arn?:      string
}
