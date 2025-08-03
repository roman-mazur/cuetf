package res

import "list"

#aws_ses_event_destination: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ses_event_destination")
	close({
		arn?: string
		cloudwatch_destination?: matchN(1, [#cloudwatch_destination, [...#cloudwatch_destination]])
		kinesis_destination?: matchN(1, [#kinesis_destination, list.MaxItems(1) & [...#kinesis_destination]])
		sns_destination?: matchN(1, [#sns_destination, list.MaxItems(1) & [...#sns_destination]])
		configuration_set_name!: string
		enabled?:                bool
		id?:                     string
		matching_types!: [...string]
		name!:   string
		region?: string
	})

	#cloudwatch_destination: close({
		default_value!:  string
		dimension_name!: string
		value_source!:   string
	})

	#kinesis_destination: close({
		role_arn!:   string
		stream_arn!: string
	})

	#sns_destination: close({
		topic_arn!: string
	})
}
