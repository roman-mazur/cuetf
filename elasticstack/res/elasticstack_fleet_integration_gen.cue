package res

#elasticstack_fleet_integration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/elasticstack_fleet_integration")
	close({
		// Set to true to force the requested action.
		force?: bool

		// The ID of this resource.
		id?: string

		// The integration package name.
		name!: string

		// Set to true if you do not wish the integration package to be
		// uninstalled at destroy time, and instead just remove the
		// integration package from the Terraform state.
		skip_destroy?: bool

		// The Kibana space IDs where this integration package should be
		// installed. When set, the package will be installed and managed
		// within the specified space. Note: The order of space IDs does
		// not matter as this is a set.
		space_ids?: [...string]

		// The integration package version.
		version!: string
	})
}
