package res

#aws_devopsguru_event_sources_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_devopsguru_event_sources_config")
	close({
		event_sources?: matchN(1, [#event_sources, [...#event_sources]])
		region?: string
	})

	#event_sources: close({
		amazon_code_guru_profiler?: matchN(1, [_#defs."/$defs/event_sources/$defs/amazon_code_guru_profiler", [..._#defs."/$defs/event_sources/$defs/amazon_code_guru_profiler"]])
	})

	_#defs: "/$defs/event_sources/$defs/amazon_code_guru_profiler": close({
		status!: string
	})
}
