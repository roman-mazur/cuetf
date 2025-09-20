package res

#azurerm_dev_center_network_connection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_dev_center_network_connection")
	close({
		domain_join_type!:    string
		domain_name?:         string
		domain_password?:     string
		domain_username?:     string
		id?:                  string
		location!:            string
		name!:                string
		organization_unit?:   string
		resource_group_name!: string
		timeouts?:            #timeouts
		subnet_id!:           string
		tags?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
