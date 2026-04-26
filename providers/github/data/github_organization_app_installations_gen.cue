package data

#github_organization_app_installations: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/github_organization_app_installations")
	close({
		id?: string

		// List of GitHub App installations in the organization.
		installations?: [...close({
			app_id?:     number
			app_slug?:   string
			client_id?:  string
			created_at?: string
			events?: [...string]
			id?: number
			permissions?: [string]: string
			repository_selection?: string
			single_file_paths?: [...string]
			suspended?:   bool
			target_id?:   number
			target_type?: string
			updated_at?:  string
		})]
	})
}
