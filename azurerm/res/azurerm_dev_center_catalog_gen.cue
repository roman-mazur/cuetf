package res

import "list"

#azurerm_dev_center_catalog: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_dev_center_catalog")
	close({
		catalog_adogit?: matchN(1, [#catalog_adogit, list.MaxItems(1) & [...#catalog_adogit]])
		dev_center_id!:       string
		id?:                  string
		name!:                string
		resource_group_name!: string
		catalog_github?: matchN(1, [#catalog_github, list.MaxItems(1) & [...#catalog_github]])
		timeouts?: #timeouts
	})

	#catalog_adogit: close({
		branch!:            string
		key_vault_key_url!: string
		path!:              string
		uri!:               string
	})

	#catalog_github: close({
		branch!:            string
		key_vault_key_url!: string
		path!:              string
		uri!:               string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
