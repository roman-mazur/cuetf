package res

#aws_lambda_provisioned_concurrency_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_lambda_provisioned_concurrency_config")
	close({
		function_name!: string
		id?:            string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                            string
		provisioned_concurrent_executions!: number
		qualifier!:                         string
		skip_destroy?:                      bool
		timeouts?:                          #timeouts
	})

	#timeouts: close({
		create?: string
		update?: string
	})
}
