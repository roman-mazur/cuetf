package data

#aws_codestarconnections_connection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_codestarconnections_connection")
	arn?:               string
	connection_status?: string
	host_arn?:          string
	id?:                string
	name?:              string
	provider_type?:     string
	tags?: [string]: string
}
