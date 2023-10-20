package res

#aws_ivs_channel: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ivs_channel")
	arn?:                         string
	authorized?:                  bool
	id?:                          string
	ingest_endpoint?:             string
	latency_mode?:                string
	name?:                        string
	playback_url?:                string
	recording_configuration_arn?: string
	tags?: [string]: string
	tags_all?: [string]: string
	type?:     string
	timeouts?: #timeouts

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
