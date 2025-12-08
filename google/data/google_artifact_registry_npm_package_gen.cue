package data

#google_artifact_registry_npm_package: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_artifact_registry_npm_package")
	close({
		// The time the package was created.
		create_time?: string

		// The region of the Artifact Registry repository.
		location!: string
		id?:       string

		// The fully qualified name of the Npm package.
		name?: string

		// The name of the Npm package.
		package_name!: string

		// Project ID of the project.
		project?: string

		// The repository ID containing the Npm package.
		repository_id!: string

		// The tags associated with the Npm package.
		tags?: [...string]

		// The time the package was last updated.
		update_time?: string

		// The version of the Npm package.
		version?: string
	})
}
