package res

#aws_ivs_channel: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ivs_channel")
	close({
		arn?:                         string
		authorized?:                  bool
		id?:                          string
		ingest_endpoint?:             string
		latency_mode?:                string
		name?:                        string
		playback_url?:                string
		recording_configuration_arn?: string
		timeouts?:                    #timeouts
		region?:                      string
		tags?: [string]:     string
		tags_all?: [string]: string
		type?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
