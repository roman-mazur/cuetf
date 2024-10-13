package data

#aws_ecs_task_definition: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ecs_task_definition")
	arn?:                  string
	arn_without_revision?: string
	execution_role_arn?:   string
	family?:               string
	id?:                   string
	network_mode?:         string
	revision?:             number
	status?:               string
	task_definition!:      string
	task_role_arn?:        string
}
