package res

#aws_chime_voice_connector: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_chime_voice_connector")
	close({
		arn?:        string
		aws_region?: string
		id?:         string
		name!:       string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:             string
		outbound_host_name?: string
		require_encryption!: bool
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
