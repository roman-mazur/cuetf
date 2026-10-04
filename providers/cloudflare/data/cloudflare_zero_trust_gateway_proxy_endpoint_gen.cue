package data

cloudflare_zero_trust_gateway_proxy_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zero_trust_gateway_proxy_endpoint")
	close({
		account_id?: string
		created_at?: string
		filter?: close({
			// Sort direction. Only takes effect when `order_by` is also provided; it
			// is ignored otherwise. When `direction` is omitted the effective
			// direction is field-specific: `created_at` and `updated_at` default to
			// descending (newest first); `name` defaults to ascending.
			// * `asc` — ascending.
			// * `desc` — descending.
			// Available values: "asc", "desc".
			direction?: string

			// Filter the returned proxy endpoints by one or more `field:value` pairs.
			// Repeat the parameter to apply multiple filters; they are combined with
			// logical AND (an endpoint must satisfy every filter to be returned).
			//
			// Supported fields and their matching behaviour:
			// * `name` — case-insensitive substring match on the endpoint name.
			// * `id` — substring match on the endpoint ID (UUID), with or without dashes.
			// * `kind` — exact match on the endpoint kind. The value must be `ip` or
			// `identity`; any other value returns `400`.
			//
			// Each entry must match one of the per-field patterns below: the field
			// must be one of `name`, `id`, or `kind`; `name`/`id` accept any value,
			// while `kind` only accepts `ip` or `identity`.
			filter?: [...string]

			// Field to sort the returned endpoints by. When omitted, the order of
			// results is unspecified. Supported values:
			// * `name` — sort alphabetically by endpoint name.
			// * `created_at` — sort by creation time; defaults to descending unless `direction` is set.
			// * `updated_at` — sort by last-modified time; defaults to descending unless `direction` is set.
			// Available values: "name", "created_at", "updated_at".
			order_by?: string

			// Case-insensitive substring match on the endpoint name. When combined
			// with `filter`, both must match (logical AND).
			search?: string
		})
		id?: string

		// Specify the list of CIDRs to restrict ingress connections.
		ips?: [...string]

		// The proxy endpoint kind
		// Available values: "ip", "identity".
		kind?: string

		// Specify the name of the proxy endpoint.
		name?:              string
		proxy_endpoint_id?: string

		// Specify the subdomain to use as the destination in the proxy client.
		subdomain?:  string
		updated_at?: string
	})
}
