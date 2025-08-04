package res

import "list"

#aws_s3_object: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_s3_object")
	close({
		acl?:                string
		arn?:                string
		bucket!:             string
		bucket_key_enabled?: bool
		cache_control?:      string
		checksum_algorithm?: string
		checksum_crc32?:     string
		checksum_crc32c?:    string
		checksum_crc64nvme?: string
		checksum_sha1?:      string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:              string
		checksum_sha256?:     string
		content?:             string
		content_base64?:      string
		content_disposition?: string
		content_encoding?:    string
		content_language?:    string
		content_type?:        string
		override_provider?: matchN(1, [#override_provider, list.MaxItems(1) & [...#override_provider]])
		etag?:          string
		force_destroy?: bool
		id?:            string
		key!:           string
		kms_key_id?:    string
		metadata?: [string]: string
		object_lock_legal_hold_status?: string
		object_lock_mode?:              string
		object_lock_retain_until_date?: string
		server_side_encryption?:        string
		source?:                        string
		source_hash?:                   string
		storage_class?:                 string
		tags?: [string]:     string
		tags_all?: [string]: string
		version_id?:       string
		website_redirect?: string
	})

	#override_provider: close({
		default_tags?: matchN(1, [_#defs."/$defs/override_provider/$defs/default_tags", list.MaxItems(1) & [..._#defs."/$defs/override_provider/$defs/default_tags"]])
	})

	_#defs: "/$defs/override_provider/$defs/default_tags": close({
		tags?: [string]: string
	})
}
