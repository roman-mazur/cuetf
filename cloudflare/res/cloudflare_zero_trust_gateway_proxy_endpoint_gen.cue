package res

#cloudflare_zero_trust_gateway_proxy_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_gateway_proxy_endpoint")
	close({
		account_id!: string
		created_at?: string
		id?:         string
		ips!: [...string]
		name!:       string
		subdomain?:  string
		updated_at?: string
	})
}
