package res

#aws_cloudwatch_log_index_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cloudwatch_log_index_policy")
	close({
		log_group_name!:  string
		policy_document!: string
		region?:          string
	})
}
