package data

#aws_ssm_parameter: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ssm_parameter")
	arn?:             string
	id?:              string
	insecure_value?:  string
	name!:            string
	type?:            string
	value?:           string
	version?:         number
	with_decryption?: bool
}
