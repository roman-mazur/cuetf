package res

#google_storage_anywhere_cache: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_storage_anywhere_cache")
	close({
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

		// True if the cache instance has an active Update long-running
		// operation.
		pending_update?: bool
		id?:             string

		// The current state of the cache instance.
		state?:    string
		timeouts?: #timeouts

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
