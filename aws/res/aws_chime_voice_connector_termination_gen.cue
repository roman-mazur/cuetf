package res

#aws_chime_voice_connector_termination: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_chime_voice_connector_termination")
	close({
		calling_regions!: [...string]
		cidr_allow_list!: [...string]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:               string
		cps_limit?:            number
		default_phone_number?: string
		disabled?:             bool
		id?:                   string
		voice_connector_id!:   string
	})
}
