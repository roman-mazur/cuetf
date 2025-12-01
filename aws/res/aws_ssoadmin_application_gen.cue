package res

#aws_ssoadmin_application: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_ssoadmin_application")
	close({
		application_account?:      string
		application_provider_arn!: string
		arn?:                      string
		client_token?:             string
		description?:              string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		portal_options?: matchN(1, [#portal_options, [...#portal_options]])
		instance_arn!: string
		name!:         string
		status?:       string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#portal_options: close({
		sign_in_options?: matchN(1, [_#defs."/$defs/portal_options/$defs/sign_in_options", [..._#defs."/$defs/portal_options/$defs/sign_in_options"]])
		visibility?: string
	})

	_#defs: "/$defs/portal_options/$defs/sign_in_options": close({
		application_url?: string
		origin!:          string
	})
}
