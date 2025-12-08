package data

#azurerm_service_plan: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_service_plan")
	close({
		app_service_environment_id?:   string
		id?:                           string
		kind?:                         string
		location?:                     string
		maximum_elastic_worker_count?: number
		name!:                         string
		os_type?:                      string
		per_site_scaling_enabled?:     bool
		reserved?:                     bool
		resource_group_name!:          string
		sku_name?:                     string
		tags?: [string]: string
		timeouts?:               #timeouts
		worker_count?:           number
		zone_balancing_enabled?: bool
	})

	#timeouts: close({
		read?: string
	})
}
