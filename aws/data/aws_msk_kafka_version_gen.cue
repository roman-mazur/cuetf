package data

#aws_msk_kafka_version: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_msk_kafka_version")
	close({
		id?: string
		preferred_versions?: [...string]
		region?:  string
		status?:  string
		version?: string
	})
}
