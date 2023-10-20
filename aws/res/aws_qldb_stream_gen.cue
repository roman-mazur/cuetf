package res

import "list"

#aws_qldb_stream: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_qldb_stream")
	arn?:                 string
	exclusive_end_time?:  string
	id?:                  string
	inclusive_start_time: string
	ledger_name:          string
	role_arn:             string
	stream_name:          string
	tags?: [string]: string
	tags_all?: [string]: string
	kinesis_configuration?: #kinesis_configuration | list.MaxItems(1) & [_, ...] & [...#kinesis_configuration]
	timeouts?:              #timeouts

	#kinesis_configuration: {
		aggregation_enabled?: bool
		stream_arn:           string
	}

	#timeouts: {
		create?: string
		delete?: string
	}
}
