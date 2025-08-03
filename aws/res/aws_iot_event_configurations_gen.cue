package res

#aws_iot_event_configurations: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_iot_event_configurations")
	close({
		event_configurations!: [string]: bool
		id?:     string
		region?: string
	})
}
