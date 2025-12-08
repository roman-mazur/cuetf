package data

#azurerm_load_test: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_load_test")
	close({
		timeouts?:       #timeouts
		data_plane_uri?: string
		description?:    string
		encryption?: [...close({
			identity?: [...close({
				identity_id?: string
				type?:        string
			})]
			key_url?: string
		})]
		id?: string
		identity?: [...close({
			identity_ids?: [...string]
			principal_id?: string
			tenant_id?:    string
			type?:         string
		})]
		location?:            string
		name!:                string
		resource_group_name!: string
		tags?: [string]: string
	})

	#timeouts: close({
		read?: string
	})
}
