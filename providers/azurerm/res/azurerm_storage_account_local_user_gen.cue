package res

import "list"

#azurerm_storage_account_local_user: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_storage_account_local_user")
	close({
		permission_scope?: matchN(1, [#permission_scope, [...#permission_scope]])
		ssh_authorized_key?: matchN(1, [#ssh_authorized_key, [...#ssh_authorized_key]])
		timeouts?:             #timeouts
		home_directory?:       string
		id?:                   string
		name!:                 string
		password?:             string
		sid?:                  string
		ssh_key_enabled?:      bool
		ssh_password_enabled?: bool
		storage_account_id!:   string
	})

	#permission_scope: close({
		permissions!: matchN(1, [_#defs."/$defs/permission_scope/$defs/permissions", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/permission_scope/$defs/permissions"]])
		resource_name!: string
		service!:       string
	})

	#ssh_authorized_key: close({
		description?: string
		key!:         string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/permission_scope/$defs/permissions": close({
		create?: bool
		delete?: bool
		list?:   bool
		read?:   bool
		write?:  bool
	})
}
