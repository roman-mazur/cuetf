package data

#aws_verifiedpermissions_policy_store: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_verifiedpermissions_policy_store")
	arn?:               string
	created_date?:      string
	description?:       string
	id!:                string
	last_updated_date?: string
	validation_settings?: [...{
		mode?: string
	}]
}
