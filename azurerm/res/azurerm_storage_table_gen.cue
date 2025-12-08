package res

#azurerm_storage_table: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_storage_table")
	close({
		id?:   string
		name!: string

		// The Resource Manager ID of this Storage Table.
		resource_manager_id?:  string
		storage_account_name!: string
		acl?: matchN(1, [#acl, [...#acl]])
		timeouts?: #timeouts
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
		expiry!:      string
		permissions!: string
		start!:       string
	})
}
