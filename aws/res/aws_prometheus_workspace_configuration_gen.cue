package res

#aws_prometheus_workspace_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_prometheus_workspace_configuration")
	close({
		limits_per_label_set?: matchN(1, [#limits_per_label_set, [...#limits_per_label_set]])
		timeouts?: #timeouts

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                   string
		retention_period_in_days?: number
		workspace_id!:             string
	})

	#limits_per_label_set: close({
		limits?: matchN(1, [_#defs."/$defs/limits_per_label_set/$defs/limits", [..._#defs."/$defs/limits_per_label_set/$defs/limits"]])
		label_set!: [string]: string
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
		update?: string
	})

	_#defs: "/$defs/limits_per_label_set/$defs/limits": close({
		max_series!: number
	})
}
