package data

#aws_ssoadmin_application_providers: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_ssoadmin_application_providers")
	close({
		application_providers?: [...close({
			application_provider_arn?: string
			display_data?: [...close({
				description?:  string
				display_name?: string
				icon_url?:     string
			})]
			federation_protocol?: string
		})]
		id?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
	})
}
