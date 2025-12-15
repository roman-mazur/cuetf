package res

#aws_medialive_multiplex_program: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_medialive_multiplex_program")
	close({
		id?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:       string
		multiplex_id!: string
		program_name!: string
		multiplex_program_settings?: matchN(1, [#multiplex_program_settings, [...#multiplex_program_settings]])
		timeouts?: #timeouts
	})

	#multiplex_program_settings: close({
		service_descriptor?: matchN(1, [_#defs."/$defs/multiplex_program_settings/$defs/service_descriptor", [..._#defs."/$defs/multiplex_program_settings/$defs/service_descriptor"]])
		video_settings?: matchN(1, [_#defs."/$defs/multiplex_program_settings/$defs/video_settings", [..._#defs."/$defs/multiplex_program_settings/$defs/video_settings"]])
		preferred_channel_pipeline!: string
		program_number!:             number
	})

	#timeouts: close({
		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
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
