package data

#google_storage_bucket_object_content: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_storage_bucket_object_content")
	close({
		// The name of the containing bucket.
		bucket!: string

		// Cache-Control directive to specify caching behavior of object
		// data. If omitted and object is accessible to all anonymous
		// users, the default will be public, max-age=3600
		cache_control?: string

		// Data as string to be uploaded. Must be defined if source is
		// not. Note: The content field is marked as sensitive. To view
		// the raw contents of the object, please define an output.
		content?: string

		// Base64 encoded version of the object content. Use this when
		// dealing with binary data.
		content_base64?: string

		// Base64 encoded SHA512 checksum of object content.
		content_base64sha512?: string

		// Content-Disposition of the object data.
		content_disposition?: string

		// Content-Encoding of the object data.
		content_encoding?: string

		// Hex encoded SHA512 checksum of object content.
		content_hexsha512?: string

		// Content-Language of the object data.
		content_language?: string

		// Content-Type of the object data. Defaults to
		// "application/octet-stream" or "text/plain; charset=utf-8".
		content_type?: string

		// Base 64 CRC32 hash of the uploaded data.
		crc32c?: string

		// Encryption key; encoded using base64.
		customer_encryption?: [...close({
			encryption_algorithm?: string
			encryption_key?:       string
		})]

		// The deletion policy for the object. Setting ABANDON allows the
		// resource to be abandoned rather than deleted when removed from
		// your Terraform configuration.
		deletion_policy?: string
		detect_md5hash?:  string

		// Whether an object is under event-based hold. Event-based hold
		// is a way to retain objects until an event occurs, which is
		// signified by the hold's release (i.e. this value is set to
		// false). After being released (set to false), such objects will
		// be subject to bucket-level retention (if any).
		event_based_hold?: bool

		// Flag to set empty Content-Type.
		force_empty_content_type?: bool

		// The content generation of this object. Used for object
		// versioning and soft delete.
		generation?: number
		id?:         string

		// Resource name of the Cloud KMS key that will be used to encrypt
		// the object. Overrides the object metadata's kmsKeyName value,
		// if any.
		kms_key_name?: string

		// Base 64 MD5 hash of the uploaded data.
		md5hash?: string

		// Hex value of md5hash
		md5hexhash?: string

		// A url reference to download this object.
		media_link?: string

		// User-provided metadata, in key/value pairs.
		metadata?: [string]: string

		// The name of the object. If you're interpolating the name of
		// this object, see output_name instead.
		name!: string

		// The name of the object. Use this field in interpolations with
		// google_storage_object_acl to recreate
		// google_storage_object_acl resources when your
		// google_storage_bucket_object is recreated.
		output_name?: string

		// Object level retention configuration.
		retention?: [...close({
			mode?:              string
			retain_until_time?: string
		})]

		// A url reference to this object.
		self_link?: string

		// A path to the data you want to upload. Must be defined if
		// content is not.
		source?: string

		// User-provided md5hash, Base 64 MD5 hash of the object data.
		source_md5hash?: string

		// The StorageClass of the new bucket object. Supported values
		// include: MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE,
		// ARCHIVE. If not provided, this defaults to the bucket's
		// default storage class or to a standard class.
		storage_class?: string

		// Whether an object is under temporary hold. While this flag is
		// set to true, the object is protected against deletion and
		// overwrites.
		temporary_hold?: bool
	})
}
