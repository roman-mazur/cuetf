package data

#aws_ssm_parameters_by_path: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ssm_parameters_by_path")
	close({
		arns?: [...string]
		id?: string
		names?: [...string]
		path!:      string
		recursive?: bool
		region?:    string
		types?: [...string]
		values?: [...string]
		with_decryption?: bool
	})
}
