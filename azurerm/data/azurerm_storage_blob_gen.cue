package data

#azurerm_storage_blob: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_storage_blob")
	close({
		access_tier?:      string
		content_md5?:      string
		content_type?:     string
		encryption_scope?: string
		id?:               string
		metadata?: [string]: string
		name!:                   string
		storage_account_name!:   string
		storage_container_name!: string
		timeouts?:               #timeouts
		type?:                   string
		url?:                    string
	})

	#timeouts: close({
		read?: string
	})
}
