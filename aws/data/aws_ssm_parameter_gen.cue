package data

#aws_ssm_parameter: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ssm_parameter")
	close({
		arn?:             string
		id?:              string
		insecure_value?:  string
		name!:            string
		region?:          string
		type?:            string
		value?:           string
		version?:         number
		with_decryption?: bool
	})
}
