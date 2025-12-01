package res

#aws_cloudsearch_domain_service_access_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_cloudsearch_domain_service_access_policy")
	close({
		access_policy!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:      string
		domain_name!: string
		id?:          string
		timeouts?:    #timeouts
	})

	#timeouts: close({
		delete?: string
		update?: string
	})
}
