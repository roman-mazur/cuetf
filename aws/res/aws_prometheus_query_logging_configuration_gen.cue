package res

#aws_prometheus_query_logging_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_prometheus_query_logging_configuration")
	close({
		destination?: matchN(1, [#destination, [...#destination]])
		timeouts?: #timeouts

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:       string
		workspace_id!: string
	})

	#destination: close({
		cloudwatch_logs?: matchN(1, [_#defs."/$defs/destination/$defs/cloudwatch_logs", [..._#defs."/$defs/destination/$defs/cloudwatch_logs"]])
		filters?: matchN(1, [_#defs."/$defs/destination/$defs/filters", [..._#defs."/$defs/destination/$defs/filters"]])
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

	_#defs: "/$defs/destination/$defs/cloudwatch_logs": close({
		log_group_arn!: string
	})

	_#defs: "/$defs/destination/$defs/filters": close({
		qsp_threshold!: number
	})
}
