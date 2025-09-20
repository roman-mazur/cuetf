package data

#azurerm_container_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_container_group")
	close({
		fqdn?: string
		id?:   string
		identity?: [...close({
			identity_ids?: [...string]
			principal_id?: string
			tenant_id?:    string
			type?:         string
		})]
		ip_address?:          string
		location?:            string
		name!:                string
		resource_group_name!: string
		timeouts?:            #timeouts
		subnet_ids?: [...string]
		tags?: [string]: string
		zones?: [...string]
	})

	#timeouts: close({
		read?: string
	})
}
