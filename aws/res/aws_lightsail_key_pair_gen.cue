package res

#aws_lightsail_key_pair: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_lightsail_key_pair")
	arn?:                   string
	encrypted_fingerprint?: string
	encrypted_private_key?: string
	fingerprint?:           string
	id?:                    string
	name?:                  string
	name_prefix?:           string
	pgp_key?:               string
	private_key?:           string
	public_key?:            string
	tags?: [string]: string
	tags_all?: [string]: string
}
