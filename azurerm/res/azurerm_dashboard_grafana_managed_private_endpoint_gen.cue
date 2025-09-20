package res

#azurerm_dashboard_grafana_managed_private_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_dashboard_grafana_managed_private_endpoint")
	close({
		grafana_id!: string
		group_ids?: [...string]
		id?:                           string
		location!:                     string
		name!:                         string
		private_link_resource_id!:     string
		private_link_resource_region?: string
		timeouts?:                     #timeouts
		private_link_service_url?:     string
		request_message?:              string
		tags?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
