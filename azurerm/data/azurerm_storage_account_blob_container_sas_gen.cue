package data

import "list"

#azurerm_storage_account_blob_container_sas: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_storage_account_blob_container_sas")
	close({
		permissions!: matchN(1, [#permissions, list.MaxItems(1) & [_, ...] & [...#permissions]])
		timeouts?:            #timeouts
		cache_control?:       string
		connection_string!:   string
		container_name!:      string
		content_disposition?: string
		content_encoding?:    string
		content_language?:    string
		content_type?:        string
		expiry!:              string
		https_only?:          bool
		id?:                  string
		ip_address?:          string
		sas?:                 string
		start!:               string
	})

	#permissions: close({
		add!:    bool
		create!: bool
		delete!: bool
		list!:   bool
		read!:   bool
		write!:  bool
	})

	#timeouts: close({
		read?: string
	})
}
