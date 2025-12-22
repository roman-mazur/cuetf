package res

#aws_workspacesweb_portal: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_workspacesweb_portal")
	close({
		additional_encryption_context?: [string]: string
		authentication_type?:          string
		browser_settings_arn?:         string
		browser_type?:                 string
		creation_date?:                string
		customer_managed_key?:         string
		data_protection_settings_arn?: string
		display_name?:                 string
		instance_type?:                string
		ip_access_settings_arn?:       string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                  string
		max_concurrent_sessions?: number
		timeouts?:                #timeouts
		network_settings_arn?:    string
		portal_arn?:              string
		portal_endpoint?:         string
		portal_status?:           string
		renderer_type?:           string
		session_logger_arn?:      string
		status_reason?:           string
		tags?: [string]:     string
		tags_all?: [string]: string
		trust_store_arn?:                  string
		user_access_logging_settings_arn?: string
		user_settings_arn?:                string
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
}
