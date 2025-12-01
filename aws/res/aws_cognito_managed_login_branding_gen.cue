package res

#aws_cognito_managed_login_branding: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_cognito_managed_login_branding")
	close({
		client_id!:                 string
		managed_login_branding_id?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                      string
		settings?:                    string
		settings_all?:                string
		use_cognito_provided_values?: bool
		user_pool_id!:                string
		asset?: matchN(1, [#asset, [...#asset]])
	})

	#asset: close({
		bytes?:       string
		category!:    string
		color_mode!:  string
		extension!:   string
		resource_id?: string
	})
}
