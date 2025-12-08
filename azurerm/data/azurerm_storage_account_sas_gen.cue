package data

import "list"

#azurerm_storage_account_sas: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_storage_account_sas")
	close({
		connection_string!: string
		permissions!: matchN(1, [#permissions, list.MaxItems(1) & [_, ...] & [...#permissions]])
		expiry!:     string
		https_only?: bool
		id?:         string
		resource_types!: matchN(1, [#resource_types, list.MaxItems(1) & [_, ...] & [...#resource_types]])
		ip_addresses?: string
		services!: matchN(1, [#services, list.MaxItems(1) & [_, ...] & [...#services]])
		sas?:            string
		signed_version?: string
		start!:          string
		timeouts?:       #timeouts
	})

	#permissions: close({
		add!:     bool
		create!:  bool
		delete!:  bool
		filter!:  bool
		list!:    bool
		process!: bool
		read!:    bool
		tag!:     bool
		update!:  bool
		write!:   bool
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
