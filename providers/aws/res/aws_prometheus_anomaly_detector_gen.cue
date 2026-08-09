package res

aws_prometheus_anomaly_detector: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_prometheus_anomaly_detector")
	close({
		configuration?: matchN(1, [#configuration, [...#configuration]])
		missing_data_action?: matchN(1, [#missing_data_action, [...#missing_data_action]])
		timeouts?: #timeouts
		alias!:    string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                         string
		arn?:                            string
		created_at?:                     string
		evaluation_interval_in_seconds?: number
		id?:                             string
		labels?: [string]:   string
		tags?: [string]:     string
		tags_all?: [string]: string
		workspace_id!: string
	})

	#configuration: close({
		random_cut_forest?: matchN(1, [_#defs."/$defs/configuration/$defs/random_cut_forest", [..._#defs."/$defs/configuration/$defs/random_cut_forest"]])
	})

	#missing_data_action: close({
		mark_as_anomaly?: bool
		skip?:            bool
	})

	#timeouts: close({
		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
		// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
		// "m" (minutes), "h" (hours).
		create?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
		// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
		// "m" (minutes), "h" (hours). Setting a timeout for a Delete operation is only
		// applicable if changes are saved into state before the destroy operation
		// occurs.
		delete?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
		// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
		// "m" (minutes), "h" (hours).
		update?: string
	})

	_#defs: "/$defs/configuration/$defs/random_cut_forest": close({
		ignore_near_expected_from_above?: matchN(1, [_#defs."/$defs/configuration/$defs/random_cut_forest/$defs/ignore_near_expected_from_above", [..._#defs."/$defs/configuration/$defs/random_cut_forest/$defs/ignore_near_expected_from_above"]])
		ignore_near_expected_from_below?: matchN(1, [_#defs."/$defs/configuration/$defs/random_cut_forest/$defs/ignore_near_expected_from_below", [..._#defs."/$defs/configuration/$defs/random_cut_forest/$defs/ignore_near_expected_from_below"]])
		query!:        string
		sample_size?:  number
		shingle_size?: number
	})

	_#defs: "/$defs/configuration/$defs/random_cut_forest/$defs/ignore_near_expected_from_above": close({
		amount?: number
		ratio?:  number
	})

	_#defs: "/$defs/configuration/$defs/random_cut_forest/$defs/ignore_near_expected_from_below": close({
		amount?: number
		ratio?:  number
	})
}
