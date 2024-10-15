package data

#aws_connect_prompt: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_connect_prompt")
	arn?:         string
	id?:          string
	instance_id!: string
	name!:        string
	prompt_id?:   string
}
