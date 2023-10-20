package data

#aws_oam_sink: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_oam_sink")
	arn?:            string
	id?:             string
	name?:           string
	sink_id?:        string
	sink_identifier: string
	tags?: [string]: string
}
