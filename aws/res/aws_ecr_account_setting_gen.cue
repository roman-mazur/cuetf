package res

#aws_ecr_account_setting: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ecr_account_setting")
	close({
		name!:   string
		region?: string
		value!:  string
	})
}
