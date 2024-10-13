package data

#aws_ivs_stream_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ivs_stream_key")
	arn?:         string
	channel_arn!: string
	id?:          string
	tags?: [string]: string
	value?: string
}
