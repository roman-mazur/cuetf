package res

#cloudflare_ipsec_tunnel: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_ipsec_tunnel")
	account_id?:             string
	allow_null_cipher?:      bool
	cloudflare_endpoint!:    string
	customer_endpoint!:      string
	description?:            string
	fqdn_id?:                string
	health_check_direction?: string
	health_check_enabled?:   bool
	health_check_rate?:      string
	health_check_target?:    string
	health_check_type?:      string
	hex_id?:                 string
	id?:                     string
	interface_address!:      string
	name!:                   string
	psk?:                    string
	remote_id?:              string
	replay_protection?:      bool
	user_id?:                string
}
