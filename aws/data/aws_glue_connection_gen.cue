package data

#aws_glue_connection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_glue_connection")
	arn?:        string
	catalog_id?: string
	connection_properties?: [string]: string
	connection_type?: string
	description?:     string
	id!:              string
	match_criteria?: [...string]
	name?: string
	physical_connection_requirements?: [...{
		availability_zone?: string
		security_group_id_list?: [...string]
		subnet_id?: string
	}]
	tags?: [string]: string
}
