package res

import "list"

#aws_verifiedaccess_instance_logging_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_verifiedaccess_instance_logging_configuration")
	id?:                         string
	verifiedaccess_instance_id!: string
	access_logs?: #access_logs | list.MaxItems(1) & [_, ...] & [...#access_logs]

	#access_logs: {
		include_trust_context?: bool
		log_version?:           string
		cloudwatch_logs?: #access_logs.#cloudwatch_logs | list.MaxItems(1) & [...#access_logs.#cloudwatch_logs]
		kinesis_data_firehose?: #access_logs.#kinesis_data_firehose | list.MaxItems(1) & [...#access_logs.#kinesis_data_firehose]
		s3?: #access_logs.#s3 | list.MaxItems(1) & [...#access_logs.#s3]

		#cloudwatch_logs: {
			enabled!:   bool
			log_group?: string
		}

		#kinesis_data_firehose: {
			delivery_stream?: string
			enabled!:         bool
		}

		#s3: {
			bucket_name?:  string
			bucket_owner?: string
			enabled!:      bool
			prefix?:       string
		}
	}
}
