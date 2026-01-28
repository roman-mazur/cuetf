package res

#aws_securitylake_subscriber: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_securitylake_subscriber")
	close({
		access_type?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:              string
		arn?:                 string
		id?:                  string
		resource_share_arn?:  string
		resource_share_name?: string
		role_arn?:            string
		s3_bucket_arn?:       string
		source?: matchN(1, [#source, [...#source]])
		subscriber_description?: string
		subscriber_endpoint?:    string
		subscriber_name?:        string
		subscriber_identity?: matchN(1, [#subscriber_identity, [...#subscriber_identity]])
		subscriber_status?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		timeouts?: #timeouts
	})

	#source: close({
		aws_log_source_resource?: matchN(1, [_#defs."/$defs/source/$defs/aws_log_source_resource", [..._#defs."/$defs/source/$defs/aws_log_source_resource"]])
		custom_log_source_resource?: matchN(1, [_#defs."/$defs/source/$defs/custom_log_source_resource", [..._#defs."/$defs/source/$defs/custom_log_source_resource"]])
	})

	#subscriber_identity: close({
		external_id!: string
		principal!:   string
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

	_#defs: "/$defs/source/$defs/aws_log_source_resource": close({
		source_name!:    string
		source_version?: string
	})

	_#defs: "/$defs/source/$defs/custom_log_source_resource": close({
		attributes?: [...close({
			crawler_arn?:  string
			database_arn?: string
			table_arn?:    string
		})]
		provider?: [...close({
			location?: string
			role_arn?: string
		})]
		source_name!:    string
		source_version?: string
	})
}
