package data

#aws_securityhub_enabled_standards: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_securityhub_enabled_standards")
	close({
		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		standards_subscription_arns?: [...string]
		standards_subscriptions?: [...close({
			standards_arn?:                string
			standards_controls_updatable?: string
			standards_inputs?: [string]: string
			standards_status?: string
			standards_status_reason?: [...close({
				status_reason_code?: string
			})]
			standards_subscription_arn?: string
		})]
	})
}
