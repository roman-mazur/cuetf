package res

#aws_cloudwatch_log_delivery_destination: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cloudwatch_log_delivery_destination")
	close({
		delivery_destination_configuration?: matchN(1, [#delivery_destination_configuration, [...#delivery_destination_configuration]])
		arn?:                       string
		delivery_destination_type?: string
		name!:                      string
		output_format?:             string
		region?:                    string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#delivery_destination_configuration: close({
		destination_resource_arn!: string
	})
}
