package data

github_app_token: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/github_app_token")
	close({
		// The GitHub App's identifier.
		app_id!: string
		id?:     string

		// The GitHub App installation's identifier.
		installation_id!: string

		// The GitHub App's PEM file content; `\n` can be used for newlines.
		pem_file!: string

		// The generated token from the credentials.
		token?: string
	})
}
