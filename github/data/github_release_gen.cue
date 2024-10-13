package data

#github_release: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/github_release")
	assets?: [...{
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
	}]
	assets_url?:       string
	body?:             string
	created_at?:       string
	draft?:            bool
	html_url?:         string
	id?:               string
	name?:             string
	owner!:            string
	prerelease?:       bool
	published_at?:     string
	release_id?:       number
	release_tag?:      string
	repository!:       string
	retrieve_by!:      string
	tarball_url?:      string
	target_commitish?: string
	upload_url?:       string
	url?:              string
	zipball_url?:      string
}
