package res

#aws_emr_security_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_emr_security_configuration")
	configuration:  string
	creation_date?: string
	id?:            string
	name?:          string
	name_prefix?:   string
}
