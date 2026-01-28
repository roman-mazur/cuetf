package res

#aws_devopsguru_event_sources_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_devopsguru_event_sources_config")
	close({
		event_sources?: matchN(1, [#event_sources, [...#event_sources]])

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
	})

	#event_sources: close({
		amazon_code_guru_profiler?: matchN(1, [_#defs."/$defs/event_sources/$defs/amazon_code_guru_profiler", [..._#defs."/$defs/event_sources/$defs/amazon_code_guru_profiler"]])
	})

	_#defs: "/$defs/event_sources/$defs/amazon_code_guru_profiler": close({
		status!: string
	})
}
