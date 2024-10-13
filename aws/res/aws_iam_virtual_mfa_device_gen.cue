package res

#aws_iam_virtual_mfa_device: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_iam_virtual_mfa_device")
	arn?:                 string
	base_32_string_seed?: string
	enable_date?:         string
	id?:                  string
	path?:                string
	qr_code_png?:         string
	tags?: [string]: string
	tags_all?: [string]: string
	user_name?:               string
	virtual_mfa_device_name!: string
}
