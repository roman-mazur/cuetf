package res

aws_dsql_stream: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_dsql_stream")
	close({
		target_definition?: matchN(1, [#target_definition, [...#target_definition]])
		timeouts?: #timeouts
		arn?:      string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:             string
		cluster_identifier!: string
		creation_time?:      string
		format!:             string
		ordering!:           string
		status?:             string
		stream_identifier?:  string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#target_definition: close({
		kinesis?: matchN(1, [_#defs."/$defs/target_definition/$defs/kinesis", [..._#defs."/$defs/target_definition/$defs/kinesis"]])
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
	})

	_#defs: "/$defs/target_definition/$defs/kinesis": close({
		role_arn!:   string
		stream_arn!: string
	})
}
