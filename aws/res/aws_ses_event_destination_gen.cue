package res

import "list"

#aws_ses_event_destination: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ses_event_destination")
	arn?:                    string
	configuration_set_name!: string
	enabled?:                bool
	id?:                     string
	matching_types!: [...string]
	name!: string
	cloudwatch_destination?: #cloudwatch_destination | [...#cloudwatch_destination]
	kinesis_destination?: #kinesis_destination | list.MaxItems(1) & [...#kinesis_destination]
	sns_destination?: #sns_destination | list.MaxItems(1) & [...#sns_destination]

	#cloudwatch_destination: {
		default_value!:  string
		dimension_name!: string
		value_source!:   string
	}

	#kinesis_destination: {
		role_arn!:   string
		stream_arn!: string
	}

	#sns_destination: topic_arn!: string
}
