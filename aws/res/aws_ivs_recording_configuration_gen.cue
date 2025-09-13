package res

import "list"

#aws_ivs_recording_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ivs_recording_configuration")
	close({
		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		destination_configuration?: matchN(1, [#destination_configuration, list.MaxItems(1) & [_, ...] & [...#destination_configuration]])
		arn?:  string
		id?:   string
		name?: string
		thumbnail_configuration?: matchN(1, [#thumbnail_configuration, list.MaxItems(1) & [...#thumbnail_configuration]])
		recording_reconnect_window_seconds?: number
		state?:                              string
		tags?: [string]:     string
		tags_all?: [string]: string
		timeouts?: #timeouts
	})

	#destination_configuration: close({
		s3?: matchN(1, [_#defs."/$defs/destination_configuration/$defs/s3", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/destination_configuration/$defs/s3"]])
	})

	#thumbnail_configuration: close({
		recording_mode?:          string
		target_interval_seconds?: number
	})

	#timeouts: close({
		create?: string
		delete?: string
	})

	_#defs: "/$defs/destination_configuration/$defs/s3": close({
		bucket_name!: string
	})
}
