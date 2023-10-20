package res

import "list"

#aws_s3_bucket_logging: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_s3_bucket_logging")
	bucket:                 string
	expected_bucket_owner?: string
	id?:                    string
	target_bucket:          string
	target_prefix:          string
	target_grant?:          #target_grant | [...#target_grant]

	#target_grant: {
		permission: string
		grantee?:   #target_grant.#grantee | list.MaxItems(1) & [_, ...] & [...#target_grant.#grantee]

		#grantee: {
			display_name?:  string
			email_address?: string
			id?:            string
			type:           string
			uri?:           string
		}
	}
}
