package data

#aws_msk_kafka_version: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_msk_kafka_version")
	id?: string
	preferred_versions?: [...string]
	status?:  string
	version?: string
}
