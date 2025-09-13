package data

#google_artifact_registry_python_package: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_artifact_registry_python_package")
	close({
		// The time the package was created.
		create_time?: string

		// The region of the Artifact Registry repository.
		location!: string

		// The fully qualified name of the Python package.
		name?: string
		id?:   string

		// The name of the Python package.
		package_name!: string

		// Project ID of the project.
		project?: string

		// The repository ID containing the Python package.
		repository_id!: string

		// The time the package was last updated.
		update_time?: string

		// The version of the Python package.
		version?: string
	})
}
