package res

import "list"

#github_enterprise_actions_permissions: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/github_enterprise_actions_permissions")
	allowed_actions?:       string
	enabled_organizations!: string
	enterprise_slug!:       string
	id?:                    string
	allowed_actions_config?: #allowed_actions_config | list.MaxItems(1) & [...#allowed_actions_config]
	enabled_organizations_config?: #enabled_organizations_config | list.MaxItems(1) & [...#enabled_organizations_config]

	#allowed_actions_config: {
		github_owned_allowed!: bool
		patterns_allowed?: [...string]
		verified_allowed?: bool
	}

	#enabled_organizations_config: organization_ids!: [...number]
}
