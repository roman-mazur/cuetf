package data

cloudflare_ai_search_namespace: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_ai_search_namespace")
	close({
		account_id!: string
		created_at?: string

		// Optional description for the namespace. Max 256 characters.
		description?:        string
		name!:               string
		public_endpoint_id?: string
		public_endpoint_params?: close({
			authorized_hosts?: [...string]
			chat_completions_endpoint?: close({
				// Disable chat completions endpoint for this public endpoint
				disabled?: bool
			})

			// Custom domain hostnames that alias this public endpoint. GET and create
			// responses return the current set; on update (PUT) this field is only echoed
			// back when supplied in the request body, otherwise it is null (omit it to
			// leave domains unchanged).
			custom_domains?: [...string]
			mcp?: close({
				description?: string

				// Disable MCP endpoint for this public endpoint
				disabled?: bool
			})

			// When false, the instance is reachable only via a registered custom domain and
			// the default <public_endpoint_id>.search.ai.cloudflare.com host returns 404.
			// Requires at least one custom domain. Defaults to true.
			// public_endpoint_params is replaced wholesale on update, so resend
			// default_domain_enabled on every update to keep the default host off —
			// omitting it resets to true.
			default_domain_enabled?: bool
			rate_limit?: close({
				period_ms?: number

				// Available values: "fixed", "sliding".
				technique?: string
				requests?:  number
			})

			// Instance IDs exposed through the namespace public endpoint. Empty means
			// nothing is searchable. Every ID must be an existing instance in this
			// namespace, and the list cannot exceed the account's multi-instance search
			// limit.
			instances_allowed?: [...string]
			enabled?: bool
			search_endpoint?: close({
				// Disable search endpoint for this public endpoint
				disabled?: bool
			})
		})
	})
}
