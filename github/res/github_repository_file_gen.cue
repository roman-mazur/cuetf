package res

#github_repository_file: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/github_repository_file")
	autocreate_branch?:               bool
	autocreate_branch_source_branch?: string
	autocreate_branch_source_sha?:    string
	branch?:                          string
	commit_author?:                   string
	commit_email?:                    string
	commit_message?:                  string
	commit_sha?:                      string
	content!:                         string
	file!:                            string
	id?:                              string
	overwrite_on_create?:             bool
	ref?:                             string
	repository!:                      string
	sha?:                             string
}
