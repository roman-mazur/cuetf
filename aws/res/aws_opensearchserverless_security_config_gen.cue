package res

#aws_opensearchserverless_security_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_opensearchserverless_security_config")
	close({
		// Version of the configuration.
		config_version?: string

		// Description of the security configuration.
		description?: string

		// Name of the policy.
		name!: string
		id?:   string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		saml_options?: matchN(1, [#saml_options, [...#saml_options]])

		// Type of configuration. Must be `saml`.
		type!: string
	})

	#saml_options: close({
		// Group attribute for this SAML integration.
		group_attribute?: string

		// The XML IdP metadata file generated from your identity
		// provider.
		metadata!: string

		// Session timeout, in minutes. Minimum is 5 minutes and maximum
		// is 720 minutes (12 hours). Default is 60 minutes.
		session_timeout?: number

		// User attribute for this SAML integration.
		user_attribute?: string
	})
}
