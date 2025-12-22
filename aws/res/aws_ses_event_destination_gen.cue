package res

import "list"

#aws_ses_event_destination: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_ses_event_destination")
	close({
		arn?:                    string
		configuration_set_name!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:  string
		enabled?: bool
		id?:      string
		matching_types!: [...string]
		cloudwatch_destination?: matchN(1, [#cloudwatch_destination, [...#cloudwatch_destination]])
		name!: string
		kinesis_destination?: matchN(1, [#kinesis_destination, list.MaxItems(1) & [...#kinesis_destination]])
		sns_destination?: matchN(1, [#sns_destination, list.MaxItems(1) & [...#sns_destination]])
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
