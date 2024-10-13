package res

#aws_service_discovery_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_service_discovery_instance")
	attributes!: [string]: string
	id?:          string
	instance_id!: string
	service_id!:  string
}
