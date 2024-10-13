package res

#aws_docdb_subnet_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_docdb_subnet_group")
	arn?:         string
	description?: string
	id?:          string
	name?:        string
	name_prefix?: string
	subnet_ids!: [...string]
	tags?: [string]: string
	tags_all?: [string]: string
}
