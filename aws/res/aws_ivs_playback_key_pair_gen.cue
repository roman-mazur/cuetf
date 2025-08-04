package res

#aws_ivs_playback_key_pair: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ivs_playback_key_pair")
	close({
		timeouts?:    #timeouts
		arn?:         string
		fingerprint?: string
		id?:          string
		name?:        string
		public_key!:  string
		region?:      string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
