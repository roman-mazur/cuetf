package res

#github_repository_collaborator: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_repository_collaborator")
	close({
		id?:                          string
		invitation_id?:               string
		permission?:                  string
		permission_diff_suppression?: bool
		repository!:                  string
		username!:                    string
	})
}
