package res

#azurerm_dev_center_project_pool: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_dev_center_project_pool")
	close({
		dev_box_definition_name!:          string
		dev_center_attached_network_name!: string
		dev_center_project_id!:            string
		id?:                               string
		local_administrator_enabled!:      bool
		location!:                         string
		managed_virtual_network_regions?: [...string]
		name!:                                    string
		single_sign_on_enabled?:                  bool
		timeouts?:                                #timeouts
		stop_on_disconnect_grace_period_minutes?: number
		tags?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
