package res

#aws_securityhub_action_target: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_securityhub_action_target")
	arn?:         string
	description!: string
	id?:          string
	identifier!:  string
	name!:        string
}
