package res

#aws_cloudfront_vpc_origin: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_cloudfront_vpc_origin")
	close({
		timeouts?: #timeouts
		arn?:      string
		etag?:     string
		id?:       string
		tags?: [string]:     string
		tags_all?: [string]: string
		vpc_origin_endpoint_config?: matchN(1, [#vpc_origin_endpoint_config, [...#vpc_origin_endpoint_config]])
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

	#vpc_origin_endpoint_config: close({
		origin_ssl_protocols?: matchN(1, [_#defs."/$defs/vpc_origin_endpoint_config/$defs/origin_ssl_protocols", [..._#defs."/$defs/vpc_origin_endpoint_config/$defs/origin_ssl_protocols"]])
		arn!:                    string
		http_port!:              number
		https_port!:             number
		name!:                   string
		origin_protocol_policy!: string
	})

	_#defs: "/$defs/vpc_origin_endpoint_config/$defs/origin_ssl_protocols": close({
		items!: [...string]
		quantity!: number
	})
}
