package res

aws_securityhub_feature_v2: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_securityhub_feature_v2")
	close({
		// The name of the opt-in feature to enable. Valid values: NETWORK_SCANNING.
		feature_name!: string

		// The current enablement status of the feature. Valid values: ENABLED, DISABLED.
		feature_status!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
	})
}
