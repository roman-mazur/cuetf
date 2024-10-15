package res

#github_enterprise_actions_runner_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_enterprise_actions_runner_group")
	allows_public_repositories?: bool
	default?:                    bool
	enterprise_slug!:            string
	etag?:                       string
	id?:                         string
	name!:                       string
	restricted_to_workflows?:    bool
	runners_url?:                string
	selected_organization_ids?: [...number]
	selected_organizations_url?: string
	selected_workflows?: [...string]
	visibility!: string
}
