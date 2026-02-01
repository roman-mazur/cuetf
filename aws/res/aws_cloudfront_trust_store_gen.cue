package res

#aws_cloudfront_trust_store: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_cloudfront_trust_store")
	close({
		ca_certificates_bundle_source?: matchN(1, [#ca_certificates_bundle_source, [...#ca_certificates_bundle_source]])
		arn?:                       string
		etag?:                      string
		id?:                        string
		name!:                      string
		number_of_ca_certificates?: number
		tags?: [string]:     string
		tags_all?: [string]: string
		timeouts?: #timeouts
	})

	#ca_certificates_bundle_source: close({
		ca_certificates_bundle_s3_location?: matchN(1, [_#defs."/$defs/ca_certificates_bundle_source/$defs/ca_certificates_bundle_s3_location", [..._#defs."/$defs/ca_certificates_bundle_source/$defs/ca_certificates_bundle_s3_location"]])
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

	_#defs: "/$defs/ca_certificates_bundle_source/$defs/ca_certificates_bundle_s3_location": close({
		bucket!:  string
		key!:     string
		region!:  string
		version?: string
	})
}
