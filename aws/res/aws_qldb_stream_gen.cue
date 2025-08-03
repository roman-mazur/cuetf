package res

import "list"

#aws_qldb_stream: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_qldb_stream")
	close({
		arn?:                string
		exclusive_end_time?: string
		kinesis_configuration?: matchN(1, [#kinesis_configuration, list.MaxItems(1) & [_, ...] & [...#kinesis_configuration]])
		timeouts?:             #timeouts
		id?:                   string
		inclusive_start_time!: string
		ledger_name!:          string
		region?:               string
		role_arn!:             string
		stream_name!:          string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#kinesis_configuration: close({
		aggregation_enabled?: bool
		stream_arn!:          string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
