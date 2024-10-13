package res

import "list"

#aws_s3_bucket_server_side_encryption_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_s3_bucket_server_side_encryption_configuration")
	bucket!:                string
	expected_bucket_owner?: string
	id?:                    string
	rule?: #rule | [_, ...] & [...#rule]

	#rule: {
		bucket_key_enabled?: bool
		apply_server_side_encryption_by_default?: #rule.#apply_server_side_encryption_by_default | list.MaxItems(1) & [...#rule.#apply_server_side_encryption_by_default]

		#apply_server_side_encryption_by_default: {
			kms_master_key_id?: string
			sse_algorithm!:     string
		}
	}
}
