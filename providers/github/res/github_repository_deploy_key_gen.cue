package res

#github_repository_deploy_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/github_repository_deploy_key")
	close({
		etag?: string

		// A SSH key.
		key!: string

		// A boolean qualifying the key to be either read only or
		// read/write.
		read_only?: bool
		id?:        string

		// Name of the GitHub repository.
		repository!: string

		// A title.
		title!: string
	})
}
