package data

#github_app_token: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/github_app_token")
	close({
		// The GitHub App ID.
		app_id!: string
		id?:     string

		// The GitHub App installation instance ID.
		installation_id!: string

		// The GitHub App PEM file contents.
		pem_file!: string

		// The generated token from the credentials.
		token?: string
	})
}
