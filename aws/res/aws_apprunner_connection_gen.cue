package res

#aws_apprunner_connection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_apprunner_connection")
	arn?:             string
	connection_name!: string
	id?:              string
	provider_type!:   string
	status?:          string
	tags?: [string]:     string
	tags_all?: [string]: string
}
