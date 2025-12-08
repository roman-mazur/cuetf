package res

#azurerm_log_analytics_workspace_table_custom_log: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_log_analytics_workspace_table_custom_log")
	close({
		description?:       string
		display_name?:      string
		id?:                string
		name!:              string
		plan?:              string
		retention_in_days?: number
		solutions?: [...string]
		column!: matchN(1, [#column, [_, ...] & [...#column]])
		standard_column?: [...close({
			description?:  string
			display_name?: string
			name?:         string
			type?:         string
		})]
		timeouts?:                #timeouts
		total_retention_in_days?: number
		workspace_id!:            string
	})

	#column: close({
		description?:  string
		display_name?: string
		name!:         string
		type!:         string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
