package res

#github_user_ssh_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/github_user_ssh_key")
	close({
		// The public SSH key to add to your GitHub account.
		key!: string

		// A descriptive name for the new key.
		title!: string
		etag?:  string

		// The URL of the SSH key.
		url?: string
		id?:  string
	})
}
