package data

#azurerm_dev_center_network_connection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_dev_center_network_connection")
	close({
		domain_join_type?:    string
		domain_name?:         string
		domain_username?:     string
		id?:                  string
		location?:            string
		name!:                string
		organization_unit?:   string
		timeouts?:            #timeouts
		resource_group_name!: string
		subnet_id?:           string
		tags?: [string]: string
	})

	#timeouts: close({
		read?: string
	})
}
