package res

import "list"

#github_enterprise_actions_permissions: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_enterprise_actions_permissions")
	close({
		allowed_actions_config?: matchN(1, [#allowed_actions_config, list.MaxItems(1) & [...#allowed_actions_config]])
		allowed_actions?:       string
		enabled_organizations!: string
		enterprise_slug!:       string
		id?:                    string
		enabled_organizations_config?: matchN(1, [#enabled_organizations_config, list.MaxItems(1) & [...#enabled_organizations_config]])
	})

	#allowed_actions_config: close({
		github_owned_allowed!: bool
		patterns_allowed?: [...string]
		verified_allowed?: bool
	})

	#enabled_organizations_config: close({
		organization_ids!: [...number]
	})
}
