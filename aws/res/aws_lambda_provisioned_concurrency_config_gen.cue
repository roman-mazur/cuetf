package res

#aws_lambda_provisioned_concurrency_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lambda_provisioned_concurrency_config")
	function_name!:                     string
	id?:                                string
	provisioned_concurrent_executions!: number
	qualifier!:                         string
	skip_destroy?:                      bool
	timeouts?:                          #timeouts

	#timeouts: {
		create?: string
		update?: string
	}
}
