package res

#elasticstack_fleet_integration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/elasticstack_fleet_integration")
	close({
		// Set to true to force the requested action.
		force?: bool

		// The ID of this resource.
		id?: string

		// Set to true to ignore constraint errors during package
		// installation.
		ignore_constraints?: bool

		// Set to true to ignore mapping update errors during package
		// installation.
		ignore_mapping_update_errors?: bool

		// The integration package name.
		name!: string

		// Set to true to allow installation of prerelease (beta, non-GA)
		// packages.
		prerelease?: bool

		// Set to true to skip data stream rollover during package
		// installation.
		skip_data_stream_rollover?: bool

		// Set to true if you do not wish the integration package to be
		// uninstalled at destroy time, and instead just remove the
		// integration package from the Terraform state.
		skip_destroy?: bool

		// The Kibana space ID where this integration package should be
		// installed.
		space_id?: string

		// The integration package version.
		version!: string
	})
}
