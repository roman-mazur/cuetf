package data

#aws_ssm_parameters_by_path: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ssm_parameters_by_path")
	arns?: [...string]
	id?: string
	names?: [...string]
	path:       string
	recursive?: bool
	types?: [...string]
	values?: [...string]
	with_decryption?: bool
}
