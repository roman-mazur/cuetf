package res

#azurerm_storage_share: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_storage_share")
	close({
		acl?: matchN(1, [#acl, [...#acl]])
		access_tier?:      string
		enabled_protocol?: string
		id?:               string
		metadata?: [string]: string
		name!:               string
		quota!:              number
		storage_account_id?: string
		url?:                string
		timeouts?:           #timeouts
	})

	#acl: close({
		access_policy?: matchN(1, [_#defs."/$defs/acl/$defs/access_policy", [..._#defs."/$defs/acl/$defs/access_policy"]])
		id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/acl/$defs/access_policy": close({
		expiry?:      string
		permissions!: string
		start?:       string
	})
}
