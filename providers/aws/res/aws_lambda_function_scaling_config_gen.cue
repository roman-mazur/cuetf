package res

aws_lambda_function_scaling_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_lambda_function_scaling_config")
	close({
		function_scaling_config?: matchN(1, [#function_scaling_config, [...#function_scaling_config]])
		timeouts?: #timeouts

		// ARN of the Lambda function.
		function_arn?: string

		// Name or ARN of the Lambda function.
		function_name!: string

		// State of the function after applying the scaling configuration.
		function_state?: string

		// Qualifier for the scaling configuration. Valid values: $LATEST.PUBLISHED or a
		// numeric version number.
		qualifier!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
	})

	#function_scaling_config: close({
		// Maximum number of execution environments that can be provisioned for the function.
		max_execution_environments?: number

		// Minimum number of execution environments to maintain for the function.
		min_execution_environments?: number
	})

	#timeouts: close({
		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
		// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
		// "m" (minutes), "h" (hours).
		create?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
		// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
		// "m" (minutes), "h" (hours). Setting a timeout for a Delete operation is only
		// applicable if changes are saved into state before the destroy operation
		// occurs.
		delete?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
		// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
		// "m" (minutes), "h" (hours).
		update?: string
	})
}
