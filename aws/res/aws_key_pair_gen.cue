package res

#aws_key_pair: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_key_pair")
	arn?:             string
	fingerprint?:     string
	id?:              string
	key_name?:        string
	key_name_prefix?: string
	key_pair_id?:     string
	key_type?:        string
	public_key!:      string
	tags?: [string]: string
	tags_all?: [string]: string
}
