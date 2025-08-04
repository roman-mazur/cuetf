package res

#aws_prometheus_query_logging_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_prometheus_query_logging_configuration")
	close({
		destination?: matchN(1, [#destination, [...#destination]])
		timeouts?:     #timeouts
		region?:       string
		workspace_id!: string
	})

	#destination: close({
		cloudwatch_logs?: matchN(1, [_#defs."/$defs/destination/$defs/cloudwatch_logs", [..._#defs."/$defs/destination/$defs/cloudwatch_logs"]])
		filters?: matchN(1, [_#defs."/$defs/destination/$defs/filters", [..._#defs."/$defs/destination/$defs/filters"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/destination/$defs/cloudwatch_logs": close({
		log_group_arn!: string
	})

	_#defs: "/$defs/destination/$defs/filters": close({
		qsp_threshold!: number
	})
}
