package res

aws_cloudwatchomni_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_cloudwatchomni_domain")
	close({
		identity_provider_configuration?: matchN(1, [#identity_provider_configuration, [...#identity_provider_configuration]])
		arn?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		custom_endpoint_urls?: [...string]
		domain_endpoint_url?:             string
		domain_id?:                       string
		identity_center_application_arn?: string
		identity_providers!: [...string]
		name!: string
	})

	#identity_provider_configuration: close({
		identity_center_configuration?: matchN(1, [_#defs."/$defs/identity_provider_configuration/$defs/identity_center_configuration", [..._#defs."/$defs/identity_provider_configuration/$defs/identity_center_configuration"]])
	})

	_#defs: "/$defs/identity_provider_configuration/$defs/identity_center_configuration": close({
		identity_center_instance_arn!: string
	})
}
