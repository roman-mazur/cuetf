package res

#aws_kms_replica_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_kms_replica_key")
	arn?:                                string
	bypass_policy_lockout_safety_check?: bool
	deletion_window_in_days?:            number
	description?:                        string
	enabled?:                            bool
	id?:                                 string
	key_id?:                             string
	key_rotation_enabled?:               bool
	key_spec?:                           string
	key_usage?:                          string
	policy?:                             string
	primary_key_arn:                     string
	tags?: [string]: string
	tags_all?: [string]: string
}
