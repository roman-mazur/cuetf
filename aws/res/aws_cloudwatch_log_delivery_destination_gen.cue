package res

#aws_cloudwatch_log_delivery_destination: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_cloudwatch_log_delivery_destination")
	close({
		arn?:                       string
		delivery_destination_type?: string
		name!:                      string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:        string
		output_format?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		delivery_destination_configuration?: matchN(1, [#delivery_destination_configuration, [...#delivery_destination_configuration]])
	})

	#delivery_destination_configuration: close({
		destination_resource_arn?: string
	})
}
