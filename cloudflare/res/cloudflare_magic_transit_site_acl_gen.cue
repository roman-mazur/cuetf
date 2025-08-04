package res

#cloudflare_magic_transit_site_acl: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_magic_transit_site_acl")
	close({
		account_id!:      string
		description?:     string
		forward_locally?: bool
		id?:              string
		name!:            string
		lan_1!: close({
			lan_id!:   string
			lan_name?: string
			port_ranges?: [...string]
			ports?: [...number]
			subnets?: [...string]
		})
		lan_2!: close({
			lan_id!:   string
			lan_name?: string
			port_ranges?: [...string]
			ports?: [...number]
			subnets?: [...string]
		})
		protocols?: [...string]
		site_id!:        string
		unidirectional?: bool
	})
}
