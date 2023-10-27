package res

#github_release: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/github_release")
	body?:                     string
	discussion_category_name?: string
	draft?:                    bool
	etag?:                     string
	generate_release_notes?:   bool
	id?:                       string
	name?:                     string
	prerelease?:               bool
	repository:                string
	tag_name:                  string
	target_commitish?:         string
}
