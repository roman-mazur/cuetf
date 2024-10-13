package res

#aws_securitylake_subscriber: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_securitylake_subscriber")
	access_type?:            string
	arn?:                    string
	id?:                     string
	resource_share_arn?:     string
	resource_share_name?:    string
	role_arn?:               string
	s3_bucket_arn?:          string
	subscriber_description?: string
	subscriber_endpoint?:    string
	subscriber_name?:        string
	subscriber_status?:      string
	tags?: [string]: string
	tags_all?: [string]: string
	source?: #source | [...#source]
	subscriber_identity?: #subscriber_identity | [...#subscriber_identity]
	timeouts?: #timeouts

	#source: {
		aws_log_source_resource?: #source.#aws_log_source_resource | [...#source.#aws_log_source_resource]
		custom_log_source_resource?: #source.#custom_log_source_resource | [...#source.#custom_log_source_resource]

		#aws_log_source_resource: {
			source_name!:    string
			source_version?: string
		}

		#custom_log_source_resource: {
			attributes?: [...{
				crawler_arn?:  string
				database_arn?: string
				table_arn?:    string
			}]
			provider?: [...{
				location?: string
				role_arn?: string
			}]
			source_name!:    string
			source_version?: string
		}
	}

	#subscriber_identity: {
		external_id!: string
		principal!:   string
	}

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
