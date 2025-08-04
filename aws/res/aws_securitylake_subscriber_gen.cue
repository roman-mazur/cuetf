package res

#aws_securitylake_subscriber: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_securitylake_subscriber")
	close({
		access_type?:         string
		arn?:                 string
		id?:                  string
		region?:              string
		resource_share_arn?:  string
		resource_share_name?: string
		role_arn?:            string
		s3_bucket_arn?:       string
		source?: matchN(1, [#source, [...#source]])
		subscriber_identity?: matchN(1, [#subscriber_identity, [...#subscriber_identity]])
		subscriber_description?: string
		subscriber_endpoint?:    string
		timeouts?:               #timeouts
		subscriber_name?:        string
		subscriber_status?:      string
		tags?: [string]:     string
		tags_all?: [string]: string
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
		create?: string
		delete?: string
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
