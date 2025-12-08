package res

#azurerm_iothub_file_upload: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_iothub_file_upload")
	close({
		authentication_type?:   string
		connection_string!:     string
		container_name!:        string
		default_ttl?:           string
		id?:                    string
		identity_id?:           string
		iothub_id!:             string
		lock_duration?:         string
		max_delivery_count?:    number
		timeouts?:              #timeouts
		notifications_enabled?: bool
		sas_ttl?:               string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
