package res

#cloudflare_zero_trust_gateway_proxy_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_gateway_proxy_endpoint")
	close({
		account_id!: string
		created_at?: string

		// Specify the list of CIDRs to restrict ingress connections.
		ips!: [...string]
		id?: string

		// Specify the name of the proxy endpoint.
		name!: string

		// Specify the subdomain to use as the destination in the proxy
		// client.
		subdomain?:  string
		updated_at?: string
	})
}
