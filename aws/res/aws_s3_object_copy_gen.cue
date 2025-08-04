package res

import "list"

#aws_s3_object_copy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_s3_object_copy")
	close({
		acl?:                          string
		arn?:                          string
		bucket!:                       string
		bucket_key_enabled?:           bool
		cache_control?:                string
		checksum_algorithm?:           string
		checksum_crc32?:               string
		checksum_crc32c?:              string
		checksum_crc64nvme?:           string
		checksum_sha1?:                string
		checksum_sha256?:              string
		content_disposition?:          string
		content_encoding?:             string
		content_language?:             string
		content_type?:                 string
		copy_if_match?:                string
		copy_if_modified_since?:       string
		copy_if_none_match?:           string
		copy_if_unmodified_since?:     string
		customer_algorithm?:           string
		customer_key?:                 string
		customer_key_md5?:             string
		etag?:                         string
		expected_bucket_owner?:        string
		expected_source_bucket_owner?: string
		expiration?:                   string
		expires?:                      string
		grant?: matchN(1, [#grant, [...#grant]])
		force_destroy?:          bool
		id?:                     string
		key!:                    string
		kms_encryption_context?: string
		kms_key_id?:             string
		last_modified?:          string
		metadata?: [string]: string
		metadata_directive?:            string
		object_lock_legal_hold_status?: string
		override_provider?: matchN(1, [#override_provider, list.MaxItems(1) & [...#override_provider]])
		object_lock_mode?:              string
		object_lock_retain_until_date?: string
		region?:                        string
		request_charged?:               bool
		request_payer?:                 string
		server_side_encryption?:        string
		source!:                        string
		source_customer_algorithm?:     string
		source_customer_key?:           string
		source_customer_key_md5?:       string
		source_version_id?:             string
		storage_class?:                 string
		tagging_directive?:             string
		tags?: [string]:     string
		tags_all?: [string]: string
		version_id?:       string
		website_redirect?: string
	})

	#grant: close({
		email?: string
		id?:    string
		permissions!: [...string]
		type!: string
		uri?:  string
	})

	#override_provider: close({
		default_tags?: matchN(1, [_#defs."/$defs/override_provider/$defs/default_tags", list.MaxItems(1) & [..._#defs."/$defs/override_provider/$defs/default_tags"]])
	})

	_#defs: "/$defs/override_provider/$defs/default_tags": close({
		tags?: [string]: string
	})
}
