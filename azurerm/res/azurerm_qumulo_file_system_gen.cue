package res

#azurerm_qumulo_file_system: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_qumulo_file_system")
	close({
		admin_password!:      string
		email!:               string
		id?:                  string
		location!:            string
		name!:                string
		offer_id?:            string
		plan_id?:             string
		publisher_id?:        string
		timeouts?:            #timeouts
		resource_group_name!: string
		storage_sku!:         string
		subnet_id!:           string
		tags?: [string]: string
		zone!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
