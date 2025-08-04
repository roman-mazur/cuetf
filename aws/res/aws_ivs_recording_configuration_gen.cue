package res

import "list"

#aws_ivs_recording_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ivs_recording_configuration")
	close({
		arn?:                                string
		id?:                                 string
		name?:                               string
		recording_reconnect_window_seconds?: number
		destination_configuration?: matchN(1, [#destination_configuration, list.MaxItems(1) & [_, ...] & [...#destination_configuration]])
		region?: string
		state?:  string
		tags?: [string]:     string
		tags_all?: [string]: string
		thumbnail_configuration?: matchN(1, [#thumbnail_configuration, list.MaxItems(1) & [...#thumbnail_configuration]])
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
