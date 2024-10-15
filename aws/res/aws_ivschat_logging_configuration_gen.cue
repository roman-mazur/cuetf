package res

import "list"

#aws_ivschat_logging_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ivschat_logging_configuration")
	arn?:   string
	id?:    string
	name?:  string
	state?: string
	tags?: [string]:     string
	tags_all?: [string]: string
	destination_configuration?: #destination_configuration | list.MaxItems(1) & [...#destination_configuration]
	timeouts?: #timeouts

	#destination_configuration: {
		cloudwatch_logs?: #destination_configuration.#cloudwatch_logs | list.MaxItems(1) & [...#destination_configuration.#cloudwatch_logs]
		firehose?: #destination_configuration.#firehose | list.MaxItems(1) & [...#destination_configuration.#firehose]
		s3?: #destination_configuration.#s3 | list.MaxItems(1) & [...#destination_configuration.#s3]

		#cloudwatch_logs: log_group_name!: string

		#firehose: delivery_stream_name!: string

		#s3: bucket_name!: string
	}

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
