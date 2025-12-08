package res

#azurerm_notification_hub_namespace: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_notification_hub_namespace")
	close({
		enabled?:             bool
		id?:                  string
		location!:            string
		name!:                string
		namespace_type!:      string
		replication_region?:  string
		resource_group_name!: string
		servicebus_endpoint?: string
		sku_name!:            string
		timeouts?:            #timeouts
		tags?: [string]: string
		zone_redundancy_enabled?: bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
