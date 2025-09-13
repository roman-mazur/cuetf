package res

#google_compute_backend_bucket_signed_url_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_compute_backend_bucket_signed_url_key")
	close({
		// The backend bucket this signed URL key belongs.
		backend_bucket!: string
		id?:             string

		// 128-bit key value used for signing the URL. The key value must
		// be a
		// valid RFC 4648 Section 5 base64url encoded string.
		key_value!: string

		// Name of the signed URL key.
		name!:     string
		timeouts?: #timeouts
		project?:  string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
