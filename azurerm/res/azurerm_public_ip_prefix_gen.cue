package res

#azurerm_public_ip_prefix: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_public_ip_prefix")
	close({
		custom_ip_prefix_id?: string
		id?:                  string
		ip_prefix?:           string
		ip_version?:          string
		location!:            string
		name!:                string
		prefix_length?:       number
		resource_group_name!: string
		timeouts?:            #timeouts
		sku?:                 string
		sku_tier?:            string
		tags?: [string]: string
		zones?: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
