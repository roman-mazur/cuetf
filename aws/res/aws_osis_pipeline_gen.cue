package res

#aws_osis_pipeline: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_osis_pipeline")
	close({
		id?: string
		ingest_endpoint_urls?: [...string]
		max_units!: number
		min_units!: number
		buffer_options?: matchN(1, [#buffer_options, [...#buffer_options]])
		pipeline_arn?:                string
		pipeline_configuration_body!: string
		encryption_at_rest_options?: matchN(1, [#encryption_at_rest_options, [...#encryption_at_rest_options]])
		pipeline_name!: string
		region?:        string
		tags?: [string]: string
		log_publishing_options?: matchN(1, [#log_publishing_options, [...#log_publishing_options]])
		timeouts?: #timeouts
		tags_all?: [string]: string
		vpc_options?: matchN(1, [#vpc_options, [...#vpc_options]])
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
		create?: string
		delete?: string
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
