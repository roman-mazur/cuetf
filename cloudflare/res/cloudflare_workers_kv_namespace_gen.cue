package res

#cloudflare_workers_kv_namespace: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_workers_kv_namespace")
	close({
		// Identifier.
		account_id!: string

		// True if new beta namespace, with additional preview features.
		beta?: bool

		// Namespace identifier tag.
		id?: string

		// True if keys written on the URL will be URL-decoded before
		// storing. For example, if set to "true", a key written on the
		// URL as "%3F" will be stored as "?".
		supports_url_encoding?: bool

		// A human-readable string name for a Namespace.
		title!: string
	})
}
