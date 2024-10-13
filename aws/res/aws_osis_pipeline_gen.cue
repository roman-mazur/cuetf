package res

#aws_osis_pipeline: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_osis_pipeline")
	id?: string
	ingest_endpoint_urls?: [...string]
	max_units!:                   number
	min_units!:                   number
	pipeline_arn?:                string
	pipeline_configuration_body!: string
	pipeline_name!:               string
	tags?: [string]: string
	tags_all?: [string]: string
	buffer_options?: #buffer_options | [...#buffer_options]
	encryption_at_rest_options?: #encryption_at_rest_options | [...#encryption_at_rest_options]
	log_publishing_options?: #log_publishing_options | [...#log_publishing_options]
	timeouts?: #timeouts
	vpc_options?: #vpc_options | [...#vpc_options]

	#buffer_options: persistent_buffer_enabled!: bool

	#encryption_at_rest_options: kms_key_arn!: string

	#log_publishing_options: {
		is_logging_enabled?: bool
		cloudwatch_log_destination?: #log_publishing_options.#cloudwatch_log_destination | [...#log_publishing_options.#cloudwatch_log_destination]

		#cloudwatch_log_destination: log_group!: string
	}

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}

	#vpc_options: {
		security_group_ids?: [...string]
		subnet_ids!: [...string]
	}
}
