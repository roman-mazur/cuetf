package res

#aws_verifiedpermissions_policy_store: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_verifiedpermissions_policy_store")
	arn?:             string
	description?:     string
	id?:              string
	policy_store_id?: string
	validation_settings?: #validation_settings | [...#validation_settings]

	#validation_settings: mode!: string
}
