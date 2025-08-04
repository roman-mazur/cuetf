package res

#aws_medialive_multiplex_program: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_medialive_multiplex_program")
	close({
		multiplex_program_settings?: matchN(1, [#multiplex_program_settings, [...#multiplex_program_settings]])
		id?:           string
		multiplex_id!: string
		program_name!: string
		region?:       string
		timeouts?:     #timeouts
	})

	#multiplex_program_settings: close({
		service_descriptor?: matchN(1, [_#defs."/$defs/multiplex_program_settings/$defs/service_descriptor", [..._#defs."/$defs/multiplex_program_settings/$defs/service_descriptor"]])
		video_settings?: matchN(1, [_#defs."/$defs/multiplex_program_settings/$defs/video_settings", [..._#defs."/$defs/multiplex_program_settings/$defs/video_settings"]])
		preferred_channel_pipeline!: string
		program_number!:             number
	})

	#timeouts: close({
		create?: string
	})

	_#defs: "/$defs/multiplex_program_settings/$defs/service_descriptor": close({
		provider_name!: string
		service_name!:  string
	})

	_#defs: "/$defs/multiplex_program_settings/$defs/video_settings": close({
		statmux_settings?: matchN(1, [_#defs."/$defs/multiplex_program_settings/$defs/video_settings/$defs/statmux_settings", [..._#defs."/$defs/multiplex_program_settings/$defs/video_settings/$defs/statmux_settings"]])
		constant_bitrate?: number
	})

	_#defs: "/$defs/multiplex_program_settings/$defs/video_settings/$defs/statmux_settings": close({
		maximum_bitrate?: number
		minimum_bitrate?: number
		priority?:        number
	})
}
