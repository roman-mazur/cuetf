package res

import "list"

#aws_cognito_identity_pool_roles_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cognito_identity_pool_roles_attachment")
	close({
		id?:               string
		identity_pool_id!: string
		region?:           string
		roles!: [string]: string
		role_mapping?: matchN(1, [#role_mapping, [...#role_mapping]])
	})

	#role_mapping: close({
		ambiguous_role_resolution?: string
		identity_provider!:         string
		type!:                      string
		mapping_rule?: matchN(1, [_#defs."/$defs/role_mapping/$defs/mapping_rule", list.MaxItems(25) & [..._#defs."/$defs/role_mapping/$defs/mapping_rule"]])
	})

	_#defs: "/$defs/role_mapping/$defs/mapping_rule": close({
		claim!:      string
		match_type!: string
		role_arn!:   string
		value!:      string
	})
}
