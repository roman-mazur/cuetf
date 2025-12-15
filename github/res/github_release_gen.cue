package res

#github_release: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/github_release")
	close({
		// The URL for the release assets.
		assets_url?: string

		// Text describing the contents of the tag.
		body?: string

		// The date and time the release was created.
		created_at?: string

		// If specified, a discussion of the specified category is created
		// and linked to the release. The value must be a category that
		// already exists in the repository.
		discussion_category_name?: string

		// Set to 'false' to create a published release.
		draft?: bool

		// Set to 'true' to automatically generate the name and body for
		// this release. If 'name' is specified, the specified name will
		// be used; otherwise, a name will be automatically generated. If
		// 'body' is specified, the body will be pre-pended to the
		// automatically generated notes.
		generate_release_notes?: bool
		etag?:                   string

		// The HTML URL for the release.
		html_url?: string

		// The name of the release.
		name?: string

		// The node ID of the release.
		node_id?: string

		// Set to 'false' to identify the release as a full release.
		prerelease?: bool
		id?:         string

		// The date and time the release was published.
		published_at?: string

		// The ID of the release.
		release_id?: number

		// The name of the repository.
		repository!: string

		// The name of the tag.
		tag_name!: string

		// The URL for the tarball of the release.
		tarball_url?: string

		// The branch name or commit SHA the tag is created from.
		target_commitish?: string

		// The URL for the uploaded assets of release.
		upload_url?: string

		// The URL for the release.
		url?: string

		// The URL for the zipball of the release.
		zipball_url?: string
	})
}
