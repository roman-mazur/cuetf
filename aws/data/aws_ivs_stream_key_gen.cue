package data

#aws_ivs_stream_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ivs_stream_key")
	close({
		arn?:         string
		channel_arn!: string
		id?:          string
		region?:      string
		tags?: [string]: string
		value?: string
	})
}
