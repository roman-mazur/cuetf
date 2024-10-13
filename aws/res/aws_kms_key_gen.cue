package res

#aws_kms_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_kms_key")
	arn?:                                string
	bypass_policy_lockout_safety_check?: bool
	custom_key_store_id?:                string
	customer_master_key_spec?:           string
	deletion_window_in_days?:            number
	description?:                        string
	enable_key_rotation?:                bool
	id?:                                 string
	is_enabled?:                         bool
	key_id?:                             string
	key_usage?:                          string
	multi_region?:                       bool
	policy?:                             string
	rotation_period_in_days?:            number
	tags?: [string]:     string
	tags_all?: [string]: string
	xks_key_id?: string
	timeouts?:   #timeouts

	#timeouts: create?: string
}
