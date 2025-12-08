package res

#azurerm_log_analytics_query_pack_query: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_log_analytics_query_pack_query")
	close({
		additional_settings_json?: string
		body!:                     string
		categories?: [...string]
		description?:   string
		display_name!:  string
		id?:            string
		name?:          string
		query_pack_id!: string
		resource_types?: [...string]
		timeouts?: #timeouts
		solutions?: [...string]
		tags?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
