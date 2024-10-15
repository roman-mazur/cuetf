package data

#aws_sfn_state_machine: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_sfn_state_machine")
	arn?:           string
	creation_date?: string
	definition?:    string
	description?:   string
	id?:            string
	name!:          string
	revision_id?:   string
	role_arn?:      string
	status?:        string
}
