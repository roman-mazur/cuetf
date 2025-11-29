package data

#google_composer_user_workloads_secret: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_composer_user_workloads_secret")
	close({
		// A map of the secret data.
		data?: [string]: string

		// Name of the environment.
		environment!: string
		id?:          string

		// Name of the secret.
		name!: string

		// The ID of the project in which the resource belongs. If it is
		// not provided, the provider project is used.
		project?: string

		// The location or Compute Engine region for the environment.
		region?: string
	})
}
