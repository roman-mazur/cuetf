package res

cloudflare_workers_kv_namespace: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_workers_kv_namespace")
	close({
		// ID of the Cloudflare account that owns the Workers KV namespaces.
		account_id!: string

		// ID of the Workers KV namespace.
		id?: string

		// Specify the jurisdiction to restrict the KV namespace to durably store data
		// within. Can only be set at namespace creation time.
		// Available values: "eu", "fedramp", "us".
		jurisdiction?: string

		// True if keys written on the URL will be URL-decoded before storing. For
		// example, if set to "true", a key written on the URL as "%3F" will be stored
		// as "?".
		supports_url_encoding?: bool

		// Human-readable string name for a Workers KV namespace.
		title!: string
	})
}
