package res

#google_storage_anywhere_cache: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_storage_anywhere_cache")
	close({
		timeouts?: #timeouts

		// The cache admission policy dictates whether a block should be
		// inserted upon a cache miss. Default value:
		// "admit-on-first-miss" Possible values: ["admit-on-first-miss",
		// "admit-on-second-miss"]
		admission_policy?: string

		// The ID of the Anywhere cache instance.
		anywhere_cache_id?: string

		// A reference to Bucket resource
		bucket!: string

		// The creation time of the cache instance in RFC 3339 format.
		create_time?: string

		// Whether Terraform will be prevented from destroying the
		// instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete
		// the instance,
		// the command will fail if this field is set to "PREVENT" in
		// Terraform state.
		// When set to "ABANDON", the command will remove the resource
		// from Terraform
		// management without updating or deleting the resource in the
		// API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string
		id?:              string

		// Whether or not the cache ingests data as the data is written to
		// the bucket.
		ingest_on_write?: bool

		// True if the cache instance has an active Update long-running
		// operation.
		pending_update?: bool

		// The current state of the cache instance.
		state?: string

		// The TTL of all cache entries in whole seconds. e.g., "7200s".
		// It defaults to '86400s'
		ttl?: string

		// The modification time of the cache instance metadata in RFC
		// 3339 format.
		update_time?: string

		// The zone in which the cache instance needs to be created. For
		// example, 'us-central1-a.'
		zone!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
