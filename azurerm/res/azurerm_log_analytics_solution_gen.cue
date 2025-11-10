package res

import "list"

#azurerm_log_analytics_solution: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_log_analytics_solution")
	close({
		plan!: matchN(1, [#plan, list.MaxItems(1) & [_, ...] & [...#plan]])
		id?:                  string
		location!:            string
		resource_group_name!: string
		solution_name!:       string
		tags?: [string]: string
		workspace_name!:        string
		workspace_resource_id!: string
		timeouts?:              #timeouts
	})

	#plan: close({
		name?:           string
		product!:        string
		promotion_code?: string
		publisher!:      string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
