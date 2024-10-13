package data

#cloudflare_tunnel: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_tunnel")
	account_id!:    string
	id?:            string
	is_deleted?:    bool
	name!:          string
	remote_config?: bool
	status?:        string
	tunnel_type?:   string
}
