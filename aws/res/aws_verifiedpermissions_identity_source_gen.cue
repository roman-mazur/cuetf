package res

#aws_verifiedpermissions_identity_source: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_verifiedpermissions_identity_source")
	close({
		configuration?: matchN(1, [#configuration, [...#configuration]])
		id?:                    string
		policy_store_id!:       string
		principal_entity_type?: string
		region?:                string
	})

	#configuration: close({
		cognito_user_pool_configuration?: matchN(1, [_#defs."/$defs/configuration/$defs/cognito_user_pool_configuration", [..._#defs."/$defs/configuration/$defs/cognito_user_pool_configuration"]])
		open_id_connect_configuration?: matchN(1, [_#defs."/$defs/configuration/$defs/open_id_connect_configuration", [..._#defs."/$defs/configuration/$defs/open_id_connect_configuration"]])
	})

	_#defs: "/$defs/configuration/$defs/cognito_user_pool_configuration": close({
		group_configuration?: matchN(1, [_#defs."/$defs/configuration/$defs/cognito_user_pool_configuration/$defs/group_configuration", [..._#defs."/$defs/configuration/$defs/cognito_user_pool_configuration/$defs/group_configuration"]])
		client_ids?: [...string]
		user_pool_arn!: string
	})

	_#defs: "/$defs/configuration/$defs/cognito_user_pool_configuration/$defs/group_configuration": close({
		group_entity_type!: string
	})

	_#defs: "/$defs/configuration/$defs/open_id_connect_configuration": close({
		group_configuration?: matchN(1, [_#defs."/$defs/configuration/$defs/open_id_connect_configuration/$defs/group_configuration", [..._#defs."/$defs/configuration/$defs/open_id_connect_configuration/$defs/group_configuration"]])
		token_selection?: matchN(1, [_#defs."/$defs/configuration/$defs/open_id_connect_configuration/$defs/token_selection", [..._#defs."/$defs/configuration/$defs/open_id_connect_configuration/$defs/token_selection"]])
		entity_id_prefix?: string
		issuer!:           string
	})

	_#defs: "/$defs/configuration/$defs/open_id_connect_configuration/$defs/group_configuration": close({
		group_claim!:       string
		group_entity_type!: string
	})

	_#defs: "/$defs/configuration/$defs/open_id_connect_configuration/$defs/token_selection": close({
		access_token_only?: matchN(1, [_#defs."/$defs/configuration/$defs/open_id_connect_configuration/$defs/token_selection/$defs/access_token_only", [..._#defs."/$defs/configuration/$defs/open_id_connect_configuration/$defs/token_selection/$defs/access_token_only"]])
		identity_token_only?: matchN(1, [_#defs."/$defs/configuration/$defs/open_id_connect_configuration/$defs/token_selection/$defs/identity_token_only", [..._#defs."/$defs/configuration/$defs/open_id_connect_configuration/$defs/token_selection/$defs/identity_token_only"]])
	})

	_#defs: "/$defs/configuration/$defs/open_id_connect_configuration/$defs/token_selection/$defs/access_token_only": close({
		audiences?: [...string]
		principal_id_claim?: string
	})

	_#defs: "/$defs/configuration/$defs/open_id_connect_configuration/$defs/token_selection/$defs/identity_token_only": close({
		client_ids?: [...string]
		principal_id_claim?: string
	})
}
