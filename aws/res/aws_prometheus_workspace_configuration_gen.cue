package res

#aws_prometheus_workspace_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_prometheus_workspace_configuration")
	close({
		region?:                   string
		retention_period_in_days?: number
		workspace_id!:             string
		limits_per_label_set?: matchN(1, [#limits_per_label_set, [...#limits_per_label_set]])
		timeouts?: #timeouts
	})

	#limits_per_label_set: close({
		label_set!: [string]: string
		limits?: matchN(1, [_#defs."/$defs/limits_per_label_set/$defs/limits", [..._#defs."/$defs/limits_per_label_set/$defs/limits"]])
	})

	#timeouts: close({
		create?: string
		update?: string
	})

	_#defs: "/$defs/limits_per_label_set/$defs/limits": close({
		max_series!: number
	})
}
