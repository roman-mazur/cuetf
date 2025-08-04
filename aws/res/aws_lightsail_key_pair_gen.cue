package res

#aws_lightsail_key_pair: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lightsail_key_pair")
	close({
		arn?:                   string
		encrypted_fingerprint?: string
		encrypted_private_key?: string
		fingerprint?:           string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:      string
		id?:          string
		name?:        string
		name_prefix?: string
		pgp_key?:     string
		private_key?: string
		public_key?:  string
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
