package res

#azurerm_storage_blob: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_storage_blob")
	close({
		access_tier?:      string
		cache_control?:    string
		content_md5?:      string
		content_type?:     string
		encryption_scope?: string
		id?:               string
		metadata?: [string]: string
		name!:                   string
		parallelism?:            number
		size?:                   number
		source?:                 string
		source_content?:         string
		timeouts?:               #timeouts
		source_uri?:             string
		storage_account_name!:   string
		storage_container_name!: string
		type!:                   string
		url?:                    string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
