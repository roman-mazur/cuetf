package data

#aws_ecs_container_definition: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ecs_container_definition")
	close({
		container_name!:     string
		cpu?:                number
		disable_networking?: bool

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		docker_labels?: [string]: string
		environment?: [string]:   string
		id?:                 string
		image?:              string
		image_digest?:       string
		memory?:             number
		memory_reservation?: number
		task_definition!:    string
	})
}
