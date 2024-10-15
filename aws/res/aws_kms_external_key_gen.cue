package res

#aws_kms_external_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_kms_external_key")
	arn?:                                string
	bypass_policy_lockout_safety_check?: bool
	deletion_window_in_days?:            number
	description?:                        string
	enabled?:                            bool
	expiration_model?:                   string
	id?:                                 string
	key_material_base64?:                string
	key_state?:                          string
	key_usage?:                          string
	multi_region?:                       bool
	policy?:                             string
	tags?: [string]:     string
	tags_all?: [string]: string
	valid_to?: string
}
