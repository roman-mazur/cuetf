package res

#aws_medialive_multiplex_program: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_medialive_multiplex_program")
	close({
		id?:           string
		multiplex_id!: string
		program_name!: string
		region?:       string
		multiplex_program_settings?: matchN(1, [#multiplex_program_settings, [...#multiplex_program_settings]])
		timeouts?: #timeouts
	})

	#multiplex_program_settings: close({
		preferred_channel_pipeline!: string
		program_number!:             number
		service_descriptor?: matchN(1, [_#defs."/$defs/multiplex_program_settings/$defs/service_descriptor", [..._#defs."/$defs/multiplex_program_settings/$defs/service_descriptor"]])
		video_settings?: matchN(1, [_#defs."/$defs/multiplex_program_settings/$defs/video_settings", [..._#defs."/$defs/multiplex_program_settings/$defs/video_settings"]])
	})

	#timeouts: close({
		create?: string
	})

	_#defs: "/$defs/multiplex_program_settings/$defs/service_descriptor": close({
		provider_name!: string
		service_name!:  string
	})

	_#defs: "/$defs/multiplex_program_settings/$defs/video_settings": close({
		constant_bitrate?: number
		statmux_settings?: matchN(1, [_#defs."/$defs/multiplex_program_settings/$defs/video_settings/$defs/statmux_settings", [..._#defs."/$defs/multiplex_program_settings/$defs/video_settings/$defs/statmux_settings"]])
	})

	_#defs: "/$defs/multiplex_program_settings/$defs/video_settings/$defs/statmux_settings": close({
		maximum_bitrate?: number
		minimum_bitrate?: number
		priority?:        number
	})
}
