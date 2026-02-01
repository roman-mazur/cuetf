package data

#aws_s3_object: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_s3_object")
	close({
		arn?:                string
		body?:               string
		body_base64?:        string
		bucket!:             string
		bucket_key_enabled?: bool
		cache_control?:      string
		checksum_crc32?:     string
		checksum_crc32c?:    string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:              string
		checksum_crc64nvme?:  string
		checksum_mode?:       string
		checksum_sha1?:       string
		checksum_sha256?:     string
		content_disposition?: string
		content_encoding?:    string
		content_language?:    string
		content_length?:      number
		content_type?:        string
		download_body?:       string
		etag?:                string
		expiration?:          string
		expires?:             string
		id?:                  string
		key!:                 string
		last_modified?:       string
		metadata?: [string]: string
		object_lock_legal_hold_status?: string
		object_lock_mode?:              string
		object_lock_retain_until_date?: string
		range?:                         string
		server_side_encryption?:        string
		sse_kms_key_id?:                string
		storage_class?:                 string
		tags?: [string]: string
		version_id?:                string
		website_redirect_location?: string
	})
}
