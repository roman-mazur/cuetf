package res

#aws_securityhub_standards_control: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_securityhub_standards_control")
	close({
		control_id?:                string
		control_status!:            string
		control_status_updated_at?: string
		description?:               string
		disabled_reason?:           string
		id?:                        string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		related_requirements?: [...string]
		remediation_url?:       string
		severity_rating?:       string
		standards_control_arn!: string
		title?:                 string
	})
}
