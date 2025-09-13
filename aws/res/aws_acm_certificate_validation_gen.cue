package res

#aws_acm_certificate_validation: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_acm_certificate_validation")
	close({
		certificate_arn!: string
		id?:              string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		validation_record_fqdns?: [...string]
		timeouts?: #timeouts
	})

	#timeouts: close({
		create?: string
	})
}
