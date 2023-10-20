package data

#aws_key_pair: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_key_pair")
	arn?:                string
	create_time?:        string
	fingerprint?:        string
	id?:                 string
	include_public_key?: bool
	key_name?:           string
	key_pair_id?:        string
	key_type?:           string
	public_key?:         string
	tags?: [string]: string
	filter?:   #filter | [...#filter]
	timeouts?: #timeouts

	#filter: {
		name: string
		values: [...string]
	}

	#timeouts: read?: string
}
