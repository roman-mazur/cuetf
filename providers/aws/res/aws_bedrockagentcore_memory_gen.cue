package res

aws_bedrockagentcore_memory: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_bedrockagentcore_memory")
	close({
		indexed_key?: matchN(1, [#indexed_key, [...#indexed_key]])
		stream_delivery_resources?: matchN(1, [#stream_delivery_resources, [...#stream_delivery_resources]])
		timeouts?: #timeouts
		arn?:      string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                    string
		description?:               string
		encryption_key_arn?:        string
		event_expiry_duration!:     number
		id?:                        string
		memory_execution_role_arn?: string
		name!:                      string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#indexed_key: close({
		key!:  string
		type!: string
	})

	#stream_delivery_resources: close({
		resource?: matchN(1, [_#defs."/$defs/stream_delivery_resources/$defs/resource", [..._#defs."/$defs/stream_delivery_resources/$defs/resource"]])
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

	_#defs: "/$defs/stream_delivery_resources/$defs/resource": close({
		kinesis?: matchN(1, [_#defs."/$defs/stream_delivery_resources/$defs/resource/$defs/kinesis", [..._#defs."/$defs/stream_delivery_resources/$defs/resource/$defs/kinesis"]])
	})

	_#defs: "/$defs/stream_delivery_resources/$defs/resource/$defs/kinesis": close({
		content_configuration?: matchN(1, [_#defs."/$defs/stream_delivery_resources/$defs/resource/$defs/kinesis/$defs/content_configuration", [..._#defs."/$defs/stream_delivery_resources/$defs/resource/$defs/kinesis/$defs/content_configuration"]])
		data_stream_arn!: string
	})

	_#defs: "/$defs/stream_delivery_resources/$defs/resource/$defs/kinesis/$defs/content_configuration": close({
		level?: string
		type!:  string
	})
}
