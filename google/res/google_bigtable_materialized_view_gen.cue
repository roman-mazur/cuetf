package res

#google_bigtable_materialized_view: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_bigtable_materialized_view")
	close({
		// Set to true to make the MaterializedView protected against
		// deletion.
		deletion_protection?: bool

		// The name of the instance to create the materialized view
		// within.
		instance?: string

		// The unique name of the materialized view in the form
		// '[_a-zA-Z0-9][-_.a-zA-Z0-9]*'.
		materialized_view_id!: string
		id?:                   string

		// The unique name of the requested materialized view. Values are
		// of the form
		// 'projects/<project>/instances/<instance>/materializedViews/<materializedViewId>'.
		name?:     string
		timeouts?: #timeouts
		project?:  string

		// The materialized view's select query.
		query!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
