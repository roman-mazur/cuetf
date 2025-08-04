package res

#elasticstack_kibana_data_view: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_kibana_data_view")
	close({
		data_view!: close({
			allow_no_index?: bool
			id?:             string
			name?:           string
			namespaces?: [...string]
			field_attrs?: _
			source_filters?: [...string]
			time_field_name?:   string
			title!:             string
			field_formats?:     _
			runtime_field_map?: _
		})
		id?:       string
		override?: bool
		space_id?: string
	})
}
