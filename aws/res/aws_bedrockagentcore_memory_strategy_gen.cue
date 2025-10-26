package res

#aws_bedrockagentcore_memory_strategy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_bedrockagentcore_memory_strategy")
	close({
		description?:               string
		memory_execution_role_arn?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:             string
		memory_id!:          string
		memory_strategy_id?: string
		name!:               string
		namespaces!: [...string]
		type!: string
		configuration?: matchN(1, [#configuration, [...#configuration]])
		timeouts?: #timeouts
	})

	#configuration: close({
		consolidation?: matchN(1, [_#defs."/$defs/configuration/$defs/consolidation", [..._#defs."/$defs/configuration/$defs/consolidation"]])
		extraction?: matchN(1, [_#defs."/$defs/configuration/$defs/extraction", [..._#defs."/$defs/configuration/$defs/extraction"]])
		type!: string
	})

	#timeouts: close({
		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		create?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		// Setting a timeout for a Delete operation is only applicable if
		// changes are saved into state before the destroy operation
		// occurs.
		delete?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		update?: string
	})

	_#defs: "/$defs/configuration/$defs/consolidation": close({
		append_to_prompt!: string
		model_id!:         string
	})

	_#defs: "/$defs/configuration/$defs/extraction": close({
		append_to_prompt!: string
		model_id!:         string
	})
}
