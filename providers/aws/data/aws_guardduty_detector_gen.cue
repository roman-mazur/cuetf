package data

#aws_guardduty_detector: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_guardduty_detector")
	close({
		arn?: string
		features?: [...close({
			additional_configuration?: [...close({
				name?:   string
				status?: string
			})]
			name?:   string
			status?: string
		})]
		finding_publishing_frequency?: string
		id?:                           string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:           string
		service_role_arn?: string
		status?:           string
		tags?: [string]: string
	})
}
