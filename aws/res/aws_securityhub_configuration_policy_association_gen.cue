package res

#aws_securityhub_configuration_policy_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_securityhub_configuration_policy_association")
	close({
		// The universally unique identifier (UUID) of the configuration
		// policy.
		policy_id!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		id?:     string

		// The identifier of the target account, organizational unit, or
		// the root to associate with the specified configuration.
		target_id!: string
		timeouts?:  #timeouts
	})

	#timeouts: close({
		create?: string
		update?: string
	})
}
