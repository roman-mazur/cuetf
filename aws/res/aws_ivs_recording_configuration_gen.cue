package res

import "list"

#aws_ivs_recording_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ivs_recording_configuration")
	arn?:                                string
	id?:                                 string
	name?:                               string
	recording_reconnect_window_seconds?: number
	state?:                              string
	tags?: [string]:     string
	tags_all?: [string]: string
	destination_configuration?: #destination_configuration | list.MaxItems(1) & [_, ...] & [...#destination_configuration]
	thumbnail_configuration?: #thumbnail_configuration | list.MaxItems(1) & [...#thumbnail_configuration]
	timeouts?: #timeouts

	#destination_configuration: {
		s3?: #destination_configuration.#s3 | list.MaxItems(1) & [_, ...] & [...#destination_configuration.#s3]

		#s3: bucket_name!: string
	}

	#thumbnail_configuration: {
		recording_mode?:          string
		target_interval_seconds?: number
	}

	#timeouts: {
		create?: string
		delete?: string
	}
}
