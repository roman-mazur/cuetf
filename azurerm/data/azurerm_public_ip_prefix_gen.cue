package data

#azurerm_public_ip_prefix: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_public_ip_prefix")
	close({
		id?:                  string
		ip_prefix?:           string
		location?:            string
		name!:                string
		prefix_length?:       number
		resource_group_name!: string
		sku?:                 string
		timeouts?:            #timeouts
		sku_tier?:            string
		tags?: [string]: string
		zones?: [...string]
	})

	#timeouts: close({
		read?: string
	})
}
