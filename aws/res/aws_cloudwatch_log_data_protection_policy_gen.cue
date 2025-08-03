package res

#aws_cloudwatch_log_data_protection_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cloudwatch_log_data_protection_policy")
	close({
		id?:              string
		log_group_name!:  string
		policy_document!: string
		region?:          string
	})
}
