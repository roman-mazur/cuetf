package res

#elasticstack_kibana_default_data_view: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/elasticstack_kibana_default_data_view")
	close({
		// The data view identifier to set as default. NOTE: The API does
		// not validate whether it is a valid identifier. Leave this
		// unset (or explicitly `null`) to unset the default data view.
		data_view_id?: string

		// Update an existing default data view identifier. If set to
		// false and a default data view already exists, the operation
		// will fail.
		force?: bool

		// Internal identifier of the resource.
		id?: string

		// If set to true, the default data view will not be unset when
		// the resource is destroyed. The existing default data view will
		// remain unchanged.
		skip_delete?: bool

		// The Kibana space ID to set the default data view in. Defaults
		// to `default`.
		space_id?: string
	})
}
