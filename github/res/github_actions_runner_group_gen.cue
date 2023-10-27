package res

#github_actions_runner_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/github_actions_runner_group")
	allows_public_repositories?: bool
	default?:                    bool
	etag?:                       string
	id?:                         string
	inherited?:                  bool
	name:                        string
	restricted_to_workflows?:    bool
	runners_url?:                string
	selected_repositories_url?:  string
	selected_repository_ids?: [...number]
	selected_workflows?: [...string]
	visibility: string
}
