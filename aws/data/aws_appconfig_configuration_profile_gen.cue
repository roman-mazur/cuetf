package data

#aws_appconfig_configuration_profile: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_appconfig_configuration_profile")
	close({
		application_id!:           string
		arn?:                      string
		configuration_profile_id!: string
		description?:              string
		id?:                       string
		kms_key_identifier?:       string
		location_uri?:             string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:             string
		name?:               string
		retrieval_role_arn?: string
		tags?: [string]: string
		type?: string
		validator?: [...close({
			content?: string
			type?:    string
		})]
	})
}
