package res

#aws_appfabric_ingestion_destination: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_appfabric_ingestion_destination")
	close({
		app_bundle_arn!: string
		arn?:            string
		id?:             string
		ingestion_arn!:  string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		destination_configuration?: matchN(1, [#destination_configuration, [...#destination_configuration]])
		tags?: [string]:     string
		tags_all?: [string]: string
		processing_configuration?: matchN(1, [#processing_configuration, [...#processing_configuration]])
		timeouts?: #timeouts
	})

	#destination_configuration: close({
		audit_log?: matchN(1, [_#defs."/$defs/destination_configuration/$defs/audit_log", [..._#defs."/$defs/destination_configuration/$defs/audit_log"]])
	})

	#processing_configuration: close({
		audit_log?: matchN(1, [_#defs."/$defs/processing_configuration/$defs/audit_log", [..._#defs."/$defs/processing_configuration/$defs/audit_log"]])
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

	_#defs: "/$defs/destination_configuration/$defs/audit_log": close({
		destination?: matchN(1, [_#defs."/$defs/destination_configuration/$defs/audit_log/$defs/destination", [..._#defs."/$defs/destination_configuration/$defs/audit_log/$defs/destination"]])
	})

	_#defs: "/$defs/destination_configuration/$defs/audit_log/$defs/destination": close({
		firehose_stream?: matchN(1, [_#defs."/$defs/destination_configuration/$defs/audit_log/$defs/destination/$defs/firehose_stream", [..._#defs."/$defs/destination_configuration/$defs/audit_log/$defs/destination/$defs/firehose_stream"]])
		s3_bucket?: matchN(1, [_#defs."/$defs/destination_configuration/$defs/audit_log/$defs/destination/$defs/s3_bucket", [..._#defs."/$defs/destination_configuration/$defs/audit_log/$defs/destination/$defs/s3_bucket"]])
	})

	_#defs: "/$defs/destination_configuration/$defs/audit_log/$defs/destination/$defs/firehose_stream": close({
		stream_name!: string
	})

	_#defs: "/$defs/destination_configuration/$defs/audit_log/$defs/destination/$defs/s3_bucket": close({
		bucket_name!: string
		prefix?:      string
	})

	_#defs: "/$defs/processing_configuration/$defs/audit_log": close({
		format!: string
		schema!: string
	})
}
