package res

#aws_service_discovery_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_service_discovery_instance")
	close({
		attributes!: [string]: string
		id?:          string
		instance_id!: string
		region?:      string
		service_id!:  string
	})
}
