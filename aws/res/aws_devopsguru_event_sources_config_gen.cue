package res

#aws_devopsguru_event_sources_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_devopsguru_event_sources_config")
	id?: string
	event_sources?: #event_sources | [...#event_sources]

	#event_sources: {
		amazon_code_guru_profiler?: #event_sources.#amazon_code_guru_profiler | [...#event_sources.#amazon_code_guru_profiler]

		#amazon_code_guru_profiler: status!: string
	}
}
