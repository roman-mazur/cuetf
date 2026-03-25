package data

#cloudflare_workers_for_platforms_dispatch_namespaces: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_workers_for_platforms_dispatch_namespaces")
	close({
		// Identifier.
		account_id!: string

		// Max items to fetch, default: 1000
		max_items?: number

		// The items returned by the data source
		result?: matchN(1, [close({
			// Identifier.
			created_by?: string

			// When the script was created.
			created_on?: string

			// Name of the Workers for Platforms dispatch namespace.
			id?: string

			// Identifier.
			modified_by?: string

			// When the script was last modified.
			modified_on?: string

			// API Resource UUID tag.
			namespace_id?: string

			// Name of the Workers for Platforms dispatch namespace.
			namespace_name?: string

			// The current number of scripts in this Dispatch Namespace.
			script_count?: number

			// Whether the Workers in the namespace are executed in a
			// "trusted" manner. When a Worker is trusted, it has access to
			// the shared caches for the zone in the Cache API, and has
			// access to the `request.cf` object on incoming Requests. When a
			// Worker is untrusted, caches are not shared across the zone,
			// and `request.cf` is undefined. By default, Workers in a
			// namespace are "untrusted".
			trusted_workers?: bool
		}), [...close({
			// Identifier.
			created_by?: string

			// When the script was created.
			created_on?: string

			// Name of the Workers for Platforms dispatch namespace.
			id?: string

			// Identifier.
			modified_by?: string

			// When the script was last modified.
			modified_on?: string

			// API Resource UUID tag.
			namespace_id?: string

			// Name of the Workers for Platforms dispatch namespace.
			namespace_name?: string

			// The current number of scripts in this Dispatch Namespace.
			script_count?: number

			// Whether the Workers in the namespace are executed in a
			// "trusted" manner. When a Worker is trusted, it has access to
			// the shared caches for the zone in the Cache API, and has
			// access to the `request.cf` object on incoming Requests. When a
			// Worker is untrusted, caches are not shared across the zone,
			// and `request.cf` is undefined. By default, Workers in a
			// namespace are "untrusted".
			trusted_workers?: bool
		})]])
	})
}
