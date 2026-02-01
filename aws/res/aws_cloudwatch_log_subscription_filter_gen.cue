package res

#aws_cloudwatch_log_subscription_filter: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_cloudwatch_log_subscription_filter")
	close({
		apply_on_transformed_logs?: bool
		destination_arn!:           string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:       string
		distribution?: string
		emit_system_fields?: [...string]
		filter_pattern!: string
		id?:             string
		log_group_name!: string
		name!:           string
		role_arn?:       string
	})
}
