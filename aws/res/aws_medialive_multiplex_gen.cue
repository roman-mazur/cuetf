package res

import "list"

#aws_medialive_multiplex: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_medialive_multiplex")
	arn?: string
	availability_zones!: [...string]
	id?:              string
	name!:            string
	start_multiplex?: bool
	tags?: [string]:     string
	tags_all?: [string]: string
	multiplex_settings?: #multiplex_settings | list.MaxItems(1) & [...#multiplex_settings]
	timeouts?: #timeouts

	#multiplex_settings: {
		maximum_video_buffer_delay_milliseconds?: number
		transport_stream_bitrate!:                number
		transport_stream_id!:                     number
		transport_stream_reserved_bitrate?:       number
	}

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
