package res

import "list"

#aws_sesv2_configuration_set_event_destination: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_sesv2_configuration_set_event_destination")
	close({
		configuration_set_name!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                 string
		event_destination_name!: string
		id?:                     string
		event_destination!: matchN(1, [#event_destination, list.MaxItems(1) & [_, ...] & [...#event_destination]])
	})

	#event_destination: close({
		cloud_watch_destination?: matchN(1, [_#defs."/$defs/event_destination/$defs/cloud_watch_destination", list.MaxItems(1) & [..._#defs."/$defs/event_destination/$defs/cloud_watch_destination"]])
		event_bridge_destination?: matchN(1, [_#defs."/$defs/event_destination/$defs/event_bridge_destination", list.MaxItems(1) & [..._#defs."/$defs/event_destination/$defs/event_bridge_destination"]])
		kinesis_firehose_destination?: matchN(1, [_#defs."/$defs/event_destination/$defs/kinesis_firehose_destination", list.MaxItems(1) & [..._#defs."/$defs/event_destination/$defs/kinesis_firehose_destination"]])
		pinpoint_destination?: matchN(1, [_#defs."/$defs/event_destination/$defs/pinpoint_destination", list.MaxItems(1) & [..._#defs."/$defs/event_destination/$defs/pinpoint_destination"]])
		sns_destination?: matchN(1, [_#defs."/$defs/event_destination/$defs/sns_destination", list.MaxItems(1) & [..._#defs."/$defs/event_destination/$defs/sns_destination"]])
		enabled?: bool
		matching_event_types!: [...string]
	})

	_#defs: "/$defs/event_destination/$defs/cloud_watch_destination": close({
		dimension_configuration!: matchN(1, [_#defs."/$defs/event_destination/$defs/cloud_watch_destination/$defs/dimension_configuration", [_, ...] & [..._#defs."/$defs/event_destination/$defs/cloud_watch_destination/$defs/dimension_configuration"]])
	})

	_#defs: "/$defs/event_destination/$defs/cloud_watch_destination/$defs/dimension_configuration": close({
		default_dimension_value!: string
		dimension_name!:          string
		dimension_value_source!:  string
	})

	_#defs: "/$defs/event_destination/$defs/event_bridge_destination": close({
		event_bus_arn!: string
	})

	_#defs: "/$defs/event_destination/$defs/kinesis_firehose_destination": close({
		delivery_stream_arn!: string
		iam_role_arn!:        string
	})

	_#defs: "/$defs/event_destination/$defs/pinpoint_destination": close({
		application_arn!: string
	})

	_#defs: "/$defs/event_destination/$defs/sns_destination": close({
		topic_arn!: string
	})
}
