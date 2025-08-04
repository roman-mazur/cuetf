package res

#aws_lambda_provisioned_concurrency_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lambda_provisioned_concurrency_config")
	close({
		timeouts?:                          #timeouts
		function_name!:                     string
		id?:                                string
		provisioned_concurrent_executions!: number
		qualifier!:                         string
		region?:                            string
		skip_destroy?:                      bool
	})

	#timeouts: close({
		create?: string
		update?: string
	})
}
