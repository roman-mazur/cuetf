package data

#azurerm_dev_center_catalog: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_dev_center_catalog")
	close({
		timeouts?: #timeouts
		catalog_adogit?: [...close({
			branch?:            string
			key_vault_key_url?: string
			path?:              string
			uri?:               string
		})]
		catalog_github?: [...close({
			branch?:            string
			key_vault_key_url?: string
			path?:              string
			uri?:               string
		})]
		dev_center_id!: string
		id?:            string
		name!:          string
	})

	#timeouts: close({
		read?: string
	})
}
