package data

#azurerm_storage_share: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_storage_share")
	close({
		acl?: matchN(1, [#acl, [...#acl]])
		id?: string
		metadata?: [string]: string
		name!:                 string
		quota?:                number
		storage_account_id?:   string
		storage_account_name?: string
		timeouts?:             #timeouts
	})

	#acl: close({
		access_policy?: [...close({
			expiry?:      string
			permissions?: string
			start?:       string
		})]
		id?: string
	})

	#timeouts: close({
		read?: string
	})
}
