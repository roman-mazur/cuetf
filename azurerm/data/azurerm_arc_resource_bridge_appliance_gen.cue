package data

#azurerm_arc_resource_bridge_appliance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_arc_resource_bridge_appliance")
	close({
		timeouts?: #timeouts
		distro?:   string
		id?:       string
		identity?: [...close({
			principal_id?: string
			tenant_id?:    string
			type?:         string
		})]
		infrastructure_provider?: string
		location?:                string
		name!:                    string
		public_key_base64?:       string
		resource_group_name!:     string
		tags?: [string]: string
	})

	#timeouts: close({
		read?: string
	})
}
