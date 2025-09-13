package res

#aws_osis_pipeline: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_osis_pipeline")
	close({
		id?: string
		ingest_endpoint_urls?: [...string]
		max_units!: number
		min_units!: number

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                      string
		pipeline_arn?:                string
		pipeline_configuration_body!: string
		pipeline_name!:               string
		buffer_options?: matchN(1, [#buffer_options, [...#buffer_options]])
		encryption_at_rest_options?: matchN(1, [#encryption_at_rest_options, [...#encryption_at_rest_options]])
		tags?: [string]: string
		log_publishing_options?: matchN(1, [#log_publishing_options, [...#log_publishing_options]])
		timeouts?: #timeouts
		vpc_options?: matchN(1, [#vpc_options, [...#vpc_options]])
		tags_all?: [string]: string
	})

	#buffer_options: close({
		persistent_buffer_enabled!: bool
	})

	#encryption_at_rest_options: close({
		kms_key_arn!: string
	})

	#log_publishing_options: close({
		cloudwatch_log_destination?: matchN(1, [_#defs."/$defs/log_publishing_options/$defs/cloudwatch_log_destination", [..._#defs."/$defs/log_publishing_options/$defs/cloudwatch_log_destination"]])
		is_logging_enabled?: bool
	})

	#timeouts: close({
		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		create?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		// Setting a timeout for a Delete operation is only applicable if
		// changes are saved into state before the destroy operation
		// occurs.
		delete?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		update?: string
	})

	#vpc_options: close({
		security_group_ids?: [...string]
		subnet_ids!: [...string]
		vpc_endpoint_management?: string
	})

	_#defs: "/$defs/log_publishing_options/$defs/cloudwatch_log_destination": close({
		log_group!: string
	})
}
