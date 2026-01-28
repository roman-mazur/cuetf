package data

#aws_opensearchserverless_security_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_opensearchserverless_security_config")
	close({
		// The version of the security configuration.
		config_version?: string

		// The date the configuration was created.
		created_date?: string

		// The description of the security configuration.
		description?: string

		// The unique identifier of the security configuration.
		id!: string

		// The date the configuration was last modified.
		last_modified_date?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		saml_options?: matchN(1, [#saml_options, [...#saml_options]])

		// The type of security configuration.
		type?: string
	})

	#saml_options: close({
		// Group attribute for this SAML integration.
		group_attribute?: string

		// The XML IdP metadata file generated from your identity
		// provider.
		metadata?: string

		// Session timeout, in minutes. Minimum is 5 minutes and maximum
		// is 720 minutes (12 hours). Default is 60 minutes.
		session_timeout?: number

		// User attribute for this SAML integration.
		user_attribute?: string
	})
}
