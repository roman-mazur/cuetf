package data

#aws_ecs_container_definition: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ecs_container_definition")
	container_name!:     string
	cpu?:                number
	disable_networking?: bool
	docker_labels?: [string]: string
	environment?: [string]: string
	id?:                 string
	image?:              string
	image_digest?:       string
	memory?:             number
	memory_reservation?: number
	task_definition!:    string
}
