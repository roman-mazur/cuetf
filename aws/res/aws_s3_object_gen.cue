package res

#aws_s3_object: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_s3_object")
	acl?:                 string
	bucket:               string
	bucket_key_enabled?:  bool
	cache_control?:       string
	checksum_algorithm?:  string
	checksum_crc32?:      string
	checksum_crc32c?:     string
	checksum_sha1?:       string
	checksum_sha256?:     string
	content?:             string
	content_base64?:      string
	content_disposition?: string
	content_encoding?:    string
	content_language?:    string
	content_type?:        string
	etag?:                string
	force_destroy?:       bool
	id?:                  string
	key:                  string
	kms_key_id?:          string
	metadata?: [string]: string
	object_lock_legal_hold_status?: string
	object_lock_mode?:              string
	object_lock_retain_until_date?: string
	server_side_encryption?:        string
	source?:                        string
	source_hash?:                   string
	storage_class?:                 string
	tags?: [string]: string
	tags_all?: [string]: string
	version_id?:       string
	website_redirect?: string
}
