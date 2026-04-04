package res

import "list"

#azurerm_eventgrid_namespace: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_eventgrid_namespace")
	close({
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		inbound_ip_rule?: matchN(1, [#inbound_ip_rule, list.MaxItems(128) & [...#inbound_ip_rule]])
		timeouts?: #timeouts
		topic_spaces_configuration?: matchN(1, [#topic_spaces_configuration, [...#topic_spaces_configuration]])
		capacity?:              number
		id?:                    string
		location!:              string
		name!:                  string
		public_network_access?: string
		resource_group_name!:   string
		sku?:                   string
		tags?: [string]: string
	})

	#identity: close({
		identity_ids?: [...string]
		principal_id?: string
		tenant_id?:    string
		type!:         string
	})

	#inbound_ip_rule: close({
		action?:  string
		ip_mask!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	#topic_spaces_configuration: close({
		dynamic_routing_enrichment?: matchN(1, [_#defs."/$defs/topic_spaces_configuration/$defs/dynamic_routing_enrichment", [..._#defs."/$defs/topic_spaces_configuration/$defs/dynamic_routing_enrichment"]])
		static_routing_enrichment?: matchN(1, [_#defs."/$defs/topic_spaces_configuration/$defs/static_routing_enrichment", [..._#defs."/$defs/topic_spaces_configuration/$defs/static_routing_enrichment"]])
		alternative_authentication_name_source?: [...string]
		maximum_client_sessions_per_authentication_name?: number
		maximum_session_expiry_in_hours?:                 number
		route_topic_id?:                                  string
	})

	_#defs: "/$defs/topic_spaces_configuration/$defs/dynamic_routing_enrichment": close({
		key!:   string
		value!: string
	})

	_#defs: "/$defs/topic_spaces_configuration/$defs/static_routing_enrichment": close({
		key!:   string
		value!: string
	})
}
