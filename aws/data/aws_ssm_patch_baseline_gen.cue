package data

#aws_ssm_patch_baseline: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ssm_patch_baseline")
	close({
		approval_rule?: [...close({
			approve_after_days?:  number
			approve_until_date?:  string
			compliance_level?:    string
			enable_non_security?: bool
			patch_filter?: [...close({
				key?: string
				values?: [...string]
			})]
		})]
		approved_patches?: [...string]
		approved_patches_compliance_level?:            string
		approved_patches_enable_non_security?:         bool
		available_security_updates_compliance_status?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:           string
		default_baseline?: bool
		description?:      string
		global_filter?: [...close({
			key?: string
			values?: [...string]
		})]
		id?:               string
		json?:             string
		name?:             string
		name_prefix?:      string
		operating_system?: string
		owner!:            string
		rejected_patches?: [...string]
		rejected_patches_action?: string
		source?: [...close({
			configuration?: string
			name?:          string
			products?: [...string]
		})]
	})
}
