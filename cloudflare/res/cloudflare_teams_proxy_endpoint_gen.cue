package res

#cloudflare_teams_proxy_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_teams_proxy_endpoint")
	account_id!: string
	id?:         string
	ips!: [...string]
	name!:      string
	subdomain?: string
}
