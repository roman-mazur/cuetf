package res

#github_repository_collaborator: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/github_repository_collaborator")
	id?:                          string
	invitation_id?:               string
	permission?:                  string
	permission_diff_suppression?: bool
	repository:                   string
	username:                     string
}
