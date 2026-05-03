package data

#aws_securityhub_security_controls: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_securityhub_security_controls")
	close({
		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		security_control_definitions?: [...close({
			current_region_availability?: string
			customizable_properties?: [...string]
			description?:         string
			remediation_url?:     string
			security_control_id?: string
			severity_rating?:     string
			title?:               string
		})]
		standards_arn?: string
	})
}
