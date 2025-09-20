package res

#azurerm_iothub_endpoint_storage_container: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_iothub_endpoint_storage_container")
	close({
		authentication_type?:        string
		batch_frequency_in_seconds?: number
		connection_string?:          string
		container_name!:             string
		encoding?:                   string
		endpoint_uri?:               string
		file_name_format?:           string
		id?:                         string
		identity_id?:                string
		iothub_id!:                  string
		max_chunk_size_in_bytes?:    number
		name!:                       string
		timeouts?:                   #timeouts
		resource_group_name!:        string
		subscription_id?:            string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
