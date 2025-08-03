package res

import "list"

#aws_medialive_multiplex: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_medialive_multiplex")
	close({
		arn?: string
		availability_zones!: [...string]
		multiplex_settings?: matchN(1, [#multiplex_settings, list.MaxItems(1) & [...#multiplex_settings]])
		timeouts?:        #timeouts
		id?:              string
		name!:            string
		region?:          string
		start_multiplex?: bool
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#multiplex_settings: close({
		maximum_video_buffer_delay_milliseconds?: number
		transport_stream_bitrate!:                number
		transport_stream_id!:                     number
		transport_stream_reserved_bitrate?:       number
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
