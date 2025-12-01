package res

#aws_ivs_channel: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_ivs_channel")
	close({
		arn?:             string
		authorized?:      bool
		id?:              string
		ingest_endpoint?: string
		latency_mode?:    string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                      string
		timeouts?:                    #timeouts
		name?:                        string
		playback_url?:                string
		recording_configuration_arn?: string
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
