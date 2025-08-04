package res

import "list"

#github_actions_repository_permissions: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_actions_repository_permissions")
	close({
		allowed_actions_config?: matchN(1, [#allowed_actions_config, list.MaxItems(1) & [...#allowed_actions_config]])
		allowed_actions?: string
		enabled?:         bool
		id?:              string
		repository!:      string
	})

	#allowed_actions_config: close({
		github_owned_allowed!: bool
		patterns_allowed?: [...string]
		verified_allowed?: bool
	})
}
