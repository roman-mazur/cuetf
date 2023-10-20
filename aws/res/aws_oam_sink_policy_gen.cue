package res

#aws_oam_sink_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_oam_sink_policy")
	arn?:            string
	id?:             string
	policy:          string
	sink_id?:        string
	sink_identifier: string
	timeouts?:       #timeouts

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
