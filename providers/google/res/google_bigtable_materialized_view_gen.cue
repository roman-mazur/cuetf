package res

#google_bigtable_materialized_view: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_bigtable_materialized_view")
	close({
		timeouts?: #timeouts

		// Whether Terraform will be prevented from destroying the
		// instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete
		// the instance,
		// the command will fail if this field is set to "PREVENT" in
		// Terraform state.
		// When set to "ABANDON", the command will remove the resource
		// from Terraform
		// management without updating or deleting the resource in the
		// API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// Set to true to make the MaterializedView protected against
		// deletion.
		deletion_protection?: bool
		id?:                  string

		// The name of the instance to create the materialized view
		// within.
		instance?: string

		// The unique name of the materialized view in the form
		// '[_a-zA-Z0-9][-_.a-zA-Z0-9]*'.
		materialized_view_id!: string

		// The unique name of the requested materialized view. Values are
		// of the form
		// 'projects/<project>/instances/<instance>/materializedViews/<materializedViewId>'.
		name?:    string
		project?: string

		// The materialized view's select query.
		query!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
