package res

#azurerm_storage_share_file: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_storage_share_file")
	close({
		content_disposition?: string
		content_encoding?:    string
		content_length?:      number
		content_md5?:         string
		content_type?:        string
		id?:                  string
		metadata?: [string]: string
		name!:             string
		path?:             string
		timeouts?:         #timeouts
		source?:           string
		storage_share_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
