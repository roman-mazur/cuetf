package res

#aws_kms_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_kms_key")
	close({
		arn?:                                string
		bypass_policy_lockout_safety_check?: bool
		custom_key_store_id?:                string
		customer_master_key_spec?:           string
		deletion_window_in_days?:            number
		description?:                        string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                  string
		enable_key_rotation?:     bool
		id?:                      string
		is_enabled?:              bool
		timeouts?:                #timeouts
		key_id?:                  string
		key_usage?:               string
		multi_region?:            bool
		policy?:                  string
		rotation_period_in_days?: number
		tags?: [string]:     string
		tags_all?: [string]: string
		xks_key_id?: string
	})

	#timeouts: close({
		create?: string
	})
}
