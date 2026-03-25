package data

#github_release: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/github_release")
	close({
		assets?: [...close({
			browser_download_url?: string
			content_type?:         string
			created_at?:           string
			id?:                   number
			label?:                string
			name?:                 string
			node_id?:              string
			size?:                 number
			updated_at?:           string
			url?:                  string
		})]
		assets_url?: string
		body?:       string
		created_at?: string
		draft?:      bool
		html_url?:   string
		id?:         string

		// Owner of the repository.
		owner!: string
		name?:  string

		// ID of the release to retrieve. Must be specified when
		// `retrieve_by` = `id`.
		release_id?: number

		// ID of the release to retrieve. Must be specified when
		// `retrieve_by` = `tag`.
		release_tag?:  string
		prerelease?:   bool
		published_at?: string

		// Name of the repository to retrieve the release from.
		repository!: string

		// Describes how to fetch the release. Valid values are `id`,
		// `tag`, `latest`.
		retrieve_by!:      string
		tarball_url?:      string
		target_commitish?: string
		upload_url?:       string
		url?:              string
		zipball_url?:      string
	})
}
