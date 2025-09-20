package res

#azurerm_dedicated_host: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_dedicated_host")
	close({
		timeouts?:                #timeouts
		auto_replace_on_failure?: bool
		dedicated_host_group_id!: string
		id?:                      string
		license_type?:            string
		location!:                string
		name!:                    string
		platform_fault_domain!:   number
		sku_name!:                string
		tags?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
