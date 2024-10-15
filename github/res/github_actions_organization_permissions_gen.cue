package res

import "list"

#github_actions_organization_permissions: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_actions_organization_permissions")
	allowed_actions?:      string
	enabled_repositories!: string
	id?:                   string
	allowed_actions_config?: #allowed_actions_config | list.MaxItems(1) & [...#allowed_actions_config]
	enabled_repositories_config?: #enabled_repositories_config | list.MaxItems(1) & [...#enabled_repositories_config]

	#allowed_actions_config: {
		github_owned_allowed!: bool
		patterns_allowed?: [...string]
		verified_allowed?: bool
	}

	#enabled_repositories_config: repository_ids!: [...number]
}
