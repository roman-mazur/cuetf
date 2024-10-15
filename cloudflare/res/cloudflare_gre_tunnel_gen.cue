package res

#cloudflare_gre_tunnel: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_gre_tunnel")
	account_id?:              string
	cloudflare_gre_endpoint!: string
	customer_gre_endpoint!:   string
	description?:             string
	health_check_enabled?:    bool
	health_check_target?:     string
	health_check_type?:       string
	id?:                      string
	interface_address!:       string
	mtu?:                     number
	name!:                    string
	ttl?:                     number
}
