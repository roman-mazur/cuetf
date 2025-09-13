package data

#google_sourcerepo_repository: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_sourcerepo_repository")
	close({
		// If set to true, skip repository creation if a repository with
		// the same name already exists.
		create_ignore_already_exists?: bool

		// Resource name of the repository, of the form '{{repo}}'.
		// The repo name may contain slashes. eg, 'name/with/slash'
		name!: string
		id?:   string

		// How this repository publishes a change in the repository
		// through Cloud Pub/Sub.
		// Keyed by the topic names.
		pubsub_configs?: [...close({
			message_format?:        string
			service_account_email?: string
			topic?:                 string
		})]
		project?: string

		// The disk usage of the repo, in bytes.
		size?: number

		// URL to clone the repository from Google Cloud Source
		// Repositories.
		url?: string
	})
}
