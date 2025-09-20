package data

#azurerm_advisor_recommendations: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_advisor_recommendations")
	close({
		timeouts?: #timeouts
		filter_by_category?: [...string]
		filter_by_resource_groups?: [...string]
		id?: string
		recommendations?: [...close({
			category?:               string
			description?:            string
			impact?:                 string
			recommendation_name?:    string
			recommendation_type_id?: string
			resource_name?:          string
			resource_type?:          string
			suppression_names?: [...string]
			updated_time?: string
		})]
	})

	#timeouts: close({
		read?: string
	})
}
