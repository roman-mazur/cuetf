package data

#azurerm_mobile_network_sim_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_mobile_network_sim_group")
	close({
		timeouts?:           #timeouts
		encryption_key_url?: string
		id?:                 string
		identity?: [...close({
			identity_ids?: [...string]
			principal_id?: string
			tenant_id?:    string
			type?:         string
		})]
		location?:          string
		mobile_network_id!: string
		name!:              string
		tags?: [string]: string
	})

	#timeouts: close({
		read?: string
	})
}
