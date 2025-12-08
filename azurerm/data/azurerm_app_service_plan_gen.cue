package data

#azurerm_app_service_plan: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_app_service_plan")
	close({
		app_service_environment_id?:   string
		id?:                           string
		is_xenon?:                     bool
		kind?:                         string
		location?:                     string
		maximum_elastic_worker_count?: number
		maximum_number_of_workers?:    number
		name!:                         string
		per_site_scaling?:             bool
		reserved?:                     bool
		resource_group_name!:          string
		sku?: [...close({
			capacity?: number
			size?:     string
			tier?:     string
		})]
		timeouts?: #timeouts
		tags?: [string]: string
		zone_redundant?: bool
	})

	#timeouts: close({
		read?: string
	})
}
