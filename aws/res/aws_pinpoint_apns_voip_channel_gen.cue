package res

#aws_pinpoint_apns_voip_channel: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_pinpoint_apns_voip_channel")
	close({
		application_id!:                string
		bundle_id?:                     string
		certificate?:                   string
		default_authentication_method?: string
		enabled?:                       bool

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:       string
		id?:           string
		private_key?:  string
		team_id?:      string
		token_key?:    string
		token_key_id?: string
	})
}
