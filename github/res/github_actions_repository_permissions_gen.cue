package res

import "list"

#github_actions_repository_permissions: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/github_actions_repository_permissions")
	allowed_actions?: string
	enabled?:         bool
	id?:              string
	repository!:      string
	allowed_actions_config?: #allowed_actions_config | list.MaxItems(1) & [...#allowed_actions_config]

	#allowed_actions_config: {
		github_owned_allowed!: bool
		patterns_allowed?: [...string]
		verified_allowed?: bool
	}
}
