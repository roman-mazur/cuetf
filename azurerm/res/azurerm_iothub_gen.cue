package res

import "list"

#azurerm_iothub: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_iothub")
	close({
		endpoint?: [...close({
			authentication_type?:        string
			batch_frequency_in_seconds?: number
			connection_string?:          string
			container_name?:             string
			encoding?:                   string
			endpoint_uri?:               string
			entity_path?:                string
			file_name_format?:           string
			identity_id?:                string
			max_chunk_size_in_bytes?:    number
			name?:                       string
			resource_group_name?:        string
			subscription_id?:            string
			type?:                       string
		})]
		enrichment?: [...close({
			endpoint_names?: [...string]
			key?:   string
			value?: string
		})]
		event_hub_events_endpoint?:     string
		event_hub_events_namespace?:    string
		event_hub_events_path?:         string
		event_hub_operations_endpoint?: string
		event_hub_operations_path?:     string
		event_hub_partition_count?:     number
		event_hub_retention_in_days?:   number
		hostname?:                      string
		cloud_to_device?: matchN(1, [#cloud_to_device, list.MaxItems(1) & [...#cloud_to_device]])
		id?: string
		fallback_route?: matchN(1, [#fallback_route, list.MaxItems(1) & [...#fallback_route]])
		local_authentication_enabled?: bool
		location!:                     string
		file_upload?: matchN(1, [#file_upload, list.MaxItems(1) & [...#file_upload]])
		min_tls_version?:               string
		name!:                          string
		public_network_access_enabled?: bool
		resource_group_name!:           string
		route?: [...close({
			condition?: string
			enabled?:   bool
			endpoint_names?: [...string]
			name?:   string
			source?: string
		})]
		shared_access_policy?: [...close({
			key_name?:      string
			permissions?:   string
			primary_key?:   string
			secondary_key?: string
		})]
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		tags?: [string]: string
		network_rule_set?: matchN(1, [#network_rule_set, [...#network_rule_set]])
		type?: string
		sku!: matchN(1, [#sku, list.MaxItems(1) & [_, ...] & [...#sku]])
		timeouts?: #timeouts
	})

	#cloud_to_device: close({
		feedback?: matchN(1, [_#defs."/$defs/cloud_to_device/$defs/feedback", [..._#defs."/$defs/cloud_to_device/$defs/feedback"]])
		default_ttl?:        string
		max_delivery_count?: number
	})

	#fallback_route: close({
		condition?: string
		enabled?:   bool
		endpoint_names?: [...string]
		source?: string
	})

	#file_upload: close({
		authentication_type?: string
		connection_string!:   string
		container_name!:      string
		default_ttl?:         string
		identity_id?:         string
		lock_duration?:       string
		max_delivery_count?:  number
		notifications?:       bool
		sas_ttl?:             string
	})

	#identity: close({
		identity_ids?: [...string]
		principal_id?: string
		tenant_id?:    string
		type!:         string
	})

	#network_rule_set: close({
		ip_rule?: matchN(1, [_#defs."/$defs/network_rule_set/$defs/ip_rule", [..._#defs."/$defs/network_rule_set/$defs/ip_rule"]])
		apply_to_builtin_eventhub_endpoint?: bool
		default_action?:                     string
	})

	#sku: close({
		capacity!: number
		name!:     string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/cloud_to_device/$defs/feedback": close({
		lock_duration?:      string
		max_delivery_count?: number
		time_to_live?:       string
	})

	_#defs: "/$defs/network_rule_set/$defs/ip_rule": close({
		action?:  string
		ip_mask!: string
		name!:    string
	})
}
