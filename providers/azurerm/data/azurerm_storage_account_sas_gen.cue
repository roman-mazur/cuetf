package data

import "list"

#azurerm_storage_account_sas: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_storage_account_sas")
	close({
		permissions?: matchN(1, [#permissions, list.MaxItems(1) & [...#permissions]])
		resource_types!: matchN(1, [#resource_types, list.MaxItems(1) & [_, ...] & [...#resource_types]])
		services!: matchN(1, [#services, list.MaxItems(1) & [_, ...] & [...#services]])
		timeouts?:          #timeouts
		connection_string!: string
		expiry!:            string
		https_only?:        bool
		id?:                string
		ip_addresses?:      string
		sas?:               string
		signed_version?:    string
		start!:             string
	})

	#permissions: close({
		add?:     bool
		create?:  bool
		delete?:  bool
		filter?:  bool
		list?:    bool
		process?: bool
		read?:    bool
		tag?:     bool
		update?:  bool
		write?:   bool
	})

	#resource_types: close({
		container!: bool
		object!:    bool
		service!:   bool
	})

	#services: close({
		blob!:  bool
		file!:  bool
		queue!: bool
		table!: bool
	})

	#timeouts: close({
		read?: string
	})
}
