package data

#cloudflare_zero_trust_gateway_proxy_endpoints: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zero_trust_gateway_proxy_endpoints")
	close({
		account_id!: string

		// Max items to fetch, default: 1000
		max_items?: number

		// The items returned by the data source
		result?: matchN(1, [close({
			// Specify the list of CIDRs to restrict ingress connections.
			ips?: [...string]
			created_at?: string
			id?:         string

			// The proxy endpoint kind
			// Available values: "ip", "identity".
			kind?: string

			// Specify the name of the proxy endpoint.
			name?: string

			// Specify the subdomain to use as the destination in the proxy
			// client.
			subdomain?:  string
			updated_at?: string
		}), [...close({
			// Specify the list of CIDRs to restrict ingress connections.
			ips?: [...string]
			created_at?: string
			id?:         string

			// The proxy endpoint kind
			// Available values: "ip", "identity".
			kind?: string

			// Specify the name of the proxy endpoint.
			name?: string

			// Specify the subdomain to use as the destination in the proxy
			// client.
			subdomain?:  string
			updated_at?: string
		})]])
	})
}
