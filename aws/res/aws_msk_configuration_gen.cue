package res

#aws_msk_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_msk_configuration")
	close({
		arn?:         string
		description?: string
		id?:          string
		kafka_versions?: [...string]
		latest_revision?:   number
		name!:              string
		region?:            string
		server_properties!: string
	})
}
