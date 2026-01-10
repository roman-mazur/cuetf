package res

#aws_lightsail_lb_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_lightsail_lb_certificate")
	close({
		arn?:         string
		created_at?:  string
		domain_name?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		domain_validation_records?: [...close({
			domain_name?:           string
			resource_record_name?:  string
			resource_record_type?:  string
			resource_record_value?: string
		})]
		id?:      string
		lb_name!: string
		name!:    string
		subject_alternative_names?: [...string]
		support_code?: string
	})
}
