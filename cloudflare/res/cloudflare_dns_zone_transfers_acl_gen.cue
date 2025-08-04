package res

#cloudflare_dns_zone_transfers_acl: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_dns_zone_transfers_acl")
	close({
		account_id!: string
		id?:         string
		ip_range!:   string
		name!:       string
	})
}
