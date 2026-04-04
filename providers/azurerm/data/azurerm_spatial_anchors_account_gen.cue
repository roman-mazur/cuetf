package data

#azurerm_spatial_anchors_account: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_spatial_anchors_account")
	close({
		timeouts?:            #timeouts
		account_domain?:      string
		account_id?:          string
		id?:                  string
		location?:            string
		name!:                string
		resource_group_name!: string
		tags?: [string]: string
	})

	#timeouts: close({
		read?: string
	})
}
