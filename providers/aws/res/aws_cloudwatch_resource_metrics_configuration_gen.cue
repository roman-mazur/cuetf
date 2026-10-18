package res

aws_cloudwatch_resource_metrics_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_cloudwatch_resource_metrics_configuration")
	close({
		metric_selection?: matchN(1, [#metric_selection, [...#metric_selection]])

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:       string
		resource_arn!: string
	})

	#metric_selection: close({
		include_metrics!: [...string]
	})
}
