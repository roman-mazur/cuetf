package res

#google_bigtable_logical_view: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_bigtable_logical_view")
	close({
		// Set to true to make the logical view protected against
		// deletion.
		deletion_protection?: bool

		// The name of the instance to create the logical view within.
		instance?: string

		// The unique name of the logical view in the form
		// '[_a-zA-Z0-9][-_.a-zA-Z0-9]*'.
		logical_view_id!: string
		id?:              string

		// The unique name of the requested logical view. Values are of
		// the form
		// 'projects/<project>/instances/<instance>/logicalViews/<logicalViewId>'.
		name?:     string
		timeouts?: #timeouts
		project?:  string

		// The logical view's select query.
		query!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
