package res

#azurerm_databox_edge_device: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_databox_edge_device")
	close({
		timeouts?: #timeouts
		device_properties?: [...close({
			capacity?: number
			configured_role_types?: [...string]
			culture?:          string
			hcs_version?:      string
			model?:            string
			node_count?:       number
			serial_number?:    string
			software_version?: string
			status?:           string
			time_zone?:        string
			type?:             string
		})]
		id?:                  string
		location!:            string
		name!:                string
		resource_group_name!: string
		sku_name!:            string
		tags?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
