package res

azurerm_log_analytics_workspace_table_microsoft: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_log_analytics_workspace_table_microsoft")
	close({
		column?: matchN(1, [#column, [...#column]])
		timeouts?:     #timeouts
		description?:  string
		display_name?: string
		id?:           string
		labels?: [...string]
		name!:              string
		retention_in_days?: number
		solutions?: [...string]
		standard_column?: [...close({
			description?:        string
			display_by_default?: bool
			display_name?:       string
			hidden?:             bool
			name?:               string
			type?:               string
			type_hint?:          string
		})]
		total_retention_in_days?: number
		workspace_id!:            string
	})

	#column: close({
		description?:        string
		display_by_default?: bool
		display_name?:       string
		hidden?:             bool
		name!:               string
		type!:               string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
