package res

import "list"

#azurerm_eventgrid_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_eventgrid_domain")
	close({
		auto_create_topic_with_first_subscription?: bool
		auto_delete_topic_with_last_subscription?:  bool
		endpoint?:                                  string
		id?:                                        string
		inbound_ip_rule?: [...close({
			action?:  string
			ip_mask?: string
		})]
		input_schema?:       string
		local_auth_enabled?: bool
		location!:           string
		name!:               string
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		primary_access_key?:            string
		public_network_access_enabled?: bool
		input_mapping_default_values?: matchN(1, [#input_mapping_default_values, list.MaxItems(1) & [...#input_mapping_default_values]])
		input_mapping_fields?: matchN(1, [#input_mapping_fields, list.MaxItems(1) & [...#input_mapping_fields]])
		resource_group_name!:  string
		secondary_access_key?: string
		tags?: [string]: string
		timeouts?: #timeouts
	})

	#identity: close({
		identity_ids?: [...string]
		principal_id?: string
		tenant_id?:    string
		type!:         string
	})

	#input_mapping_default_values: close({
		data_version?: string
		event_type?:   string
		subject?:      string
	})

	#input_mapping_fields: close({
		data_version?: string
		event_time?:   string
		event_type?:   string
		id?:           string
		subject?:      string
		topic?:        string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
