package res

#aws_ivs_playback_key_pair: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ivs_playback_key_pair")
	arn?:         string
	fingerprint?: string
	id?:          string
	name?:        string
	public_key!:  string
	tags?: [string]:     string
	tags_all?: [string]: string
	timeouts?: #timeouts

	#timeouts: {
		create?: string
		delete?: string
	}
}
