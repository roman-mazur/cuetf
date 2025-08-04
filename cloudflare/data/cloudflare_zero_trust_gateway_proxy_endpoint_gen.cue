package data

#cloudflare_zero_trust_gateway_proxy_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_gateway_proxy_endpoint")
	close({
		account_id!: string

		// A list of CIDRs to restrict ingress connections.
		ips?: [...string]
		created_at?: string

		// The name of the proxy endpoint.
		name?: string
		id?:   string

		// The subdomain to be used as the destination in the proxy
		// client.
		subdomain?:         string
		proxy_endpoint_id!: string
		updated_at?:        string
	})
}
