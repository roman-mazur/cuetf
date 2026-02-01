package res

#aws_cloudfront_distribution_tenant: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_cloudfront_distribution_tenant")
	close({
		arn?: string
		customizations?: matchN(1, [#customizations, [...#customizations]])
		connection_group_id?: string
		distribution_id!:     string
		enabled?:             bool
		etag?:                string
		id?:                  string
		name!:                string
		status?:              string
		domain?: matchN(1, [#domain, [...#domain]])
		managed_certificate_request?: matchN(1, [#managed_certificate_request, [...#managed_certificate_request]])
		tags?: [string]: string
		parameter?: matchN(1, [#parameter, [...#parameter]])
		timeouts?: #timeouts
		tags_all?: [string]: string
		wait_for_deployment?: bool
	})

	#customizations: close({
		certificate?: matchN(1, [_#defs."/$defs/customizations/$defs/certificate", [..._#defs."/$defs/customizations/$defs/certificate"]])
		geo_restriction?: matchN(1, [_#defs."/$defs/customizations/$defs/geo_restriction", [..._#defs."/$defs/customizations/$defs/geo_restriction"]])
		web_acl?: matchN(1, [_#defs."/$defs/customizations/$defs/web_acl", [..._#defs."/$defs/customizations/$defs/web_acl"]])
	})

	#domain: close({
		domain!: string
		status?: string
	})

	#managed_certificate_request: close({
		certificate_transparency_logging_preference?: string
		primary_domain_name?:                         string
		validation_token_host?:                       string
	})

	#parameter: close({
		name!:  string
		value!: string
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

	_#defs: "/$defs/customizations/$defs/certificate": close({
		arn?: string
	})

	_#defs: "/$defs/customizations/$defs/geo_restriction": close({
		locations?: [...string]
		restriction_type?: string
	})

	_#defs: "/$defs/customizations/$defs/web_acl": close({
		action?: string
		arn?:    string
	})
}
