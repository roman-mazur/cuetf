package res

import "list"

#aws_cognito_identity_pool_roles_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_cognito_identity_pool_roles_attachment")
	id?:              string
	identity_pool_id: string
	roles: [string]: string
	role_mapping?: #role_mapping | [...#role_mapping]

	#role_mapping: {
		ambiguous_role_resolution?: string
		identity_provider:          string
		type:                       string
		mapping_rule?:              #role_mapping.#mapping_rule | list.MaxItems(25) & [...#role_mapping.#mapping_rule]

		#mapping_rule: {
			claim:      string
			match_type: string
			role_arn:   string
			value:      string
		}
	}
}
