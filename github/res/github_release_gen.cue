package res

#github_release: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/github_release")
	assets_url?:               string
	body?:                     string
	created_at?:               string
	discussion_category_name?: string
	draft?:                    bool
	etag?:                     string
	generate_release_notes?:   bool
	html_url?:                 string
	id?:                       string
	name?:                     string
	node_id?:                  string
	prerelease?:               bool
	published_at?:             string
	release_id?:               number
	repository!:               string
	tag_name!:                 string
	tarball_url?:              string
	target_commitish?:         string
	upload_url?:               string
	url?:                      string
	zipball_url?:              string
}
