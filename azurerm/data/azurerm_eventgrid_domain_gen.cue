package data

#azurerm_eventgrid_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_eventgrid_domain")
	close({
		endpoint?: string
		id?:       string
		identity?: [...close({
			identity_ids?: [...string]
			principal_id?: string
			tenant_id?:    string
			type?:         string
		})]
		inbound_ip_rule?: [...close({
			action?:  string
			ip_mask?: string
		})]
		input_mapping_default_values?: [...close({
			data_version?: string
			event_type?:   string
			subject?:      string
		})]
		input_mapping_fields?: [...close({
			data_version?: string
			event_time?:   string
			event_type?:   string
			id?:           string
			subject?:      string
			topic?:        string
		})]
		input_schema?:                  string
		location?:                      string
		name!:                          string
		primary_access_key?:            string
		public_network_access_enabled?: bool
		resource_group_name!:           string
		timeouts?:                      #timeouts
		secondary_access_key?:          string
		tags?: [string]: string
	})

	#timeouts: close({
		read?: string
	})
}
