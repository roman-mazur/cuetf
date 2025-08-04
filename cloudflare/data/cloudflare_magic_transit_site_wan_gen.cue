package data

#cloudflare_magic_transit_site_wan: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_magic_transit_site_wan")
	close({
		account_id!:        string
		health_check_rate?: string
		id?:                string
		static_addressing?: close({
			address?:           string
			gateway_address?:   string
			secondary_address?: string
		})
		name?:     string
		physport?: number
		priority?: number
		site_id!:  string
		vlan_tag?: number
		wan_id?:   string
	})
}
