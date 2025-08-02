package data

#aws_ecs_container_definition: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ecs_container_definition")
	close({
		container_name!:     string
		cpu?:                number
		disable_networking?: bool
		docker_labels?: [string]: string
		environment?: [string]:   string
		id?:                 string
		image?:              string
		image_digest?:       string
		memory?:             number
		memory_reservation?: number
		region?:             string
		task_definition!:    string
	})
}
