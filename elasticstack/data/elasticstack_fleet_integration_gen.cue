package data

#elasticstack_fleet_integration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_fleet_integration")
	close({
		// The ID of this resource.
		id?: string

		// The integration package name.
		name!: string

		// Include prerelease packages.
		prerelease?: bool

		// The integration package version.
		version?: string
	})
}
