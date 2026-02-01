package res

#aws_cloudfront_connection_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_cloudfront_connection_group")
	close({
		anycast_ip_list_id?: string
		arn?:                string
		enabled?:            bool
		etag?:               string
		id?:                 string
		ipv6_enabled?:       bool
		is_default?:         bool
		last_modified_time?: string
		name!:               string
		routing_endpoint?:   string
		status?:             string
		tags?: [string]: string
		timeouts?: #timeouts
		tags_all?: [string]: string
		wait_for_deployment?: bool
	})

	#timeouts: close({
		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		// Default is 90 minutes.
		create?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		// Default is 90 minutes.
		delete?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		// Default is 90 minutes.
		update?: string
	})
}
