package res

import "list"

#azurerm_frontdoor: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_frontdoor")
	close({
		backend_pool_health_probes?: [string]:           string
		backend_pool_load_balancing_settings?: [string]: string
		backend_pools?: [string]:                        string
		cname?: string
		explicit_resource_order?: [...close({
			backend_pool_health_probe_ids?: [...string]
			backend_pool_ids?: [...string]
			backend_pool_load_balancing_ids?: [...string]
			frontend_endpoint_ids?: [...string]
			routing_rule_ids?: [...string]
		})]
		friendly_name?: string
		frontend_endpoints?: [string]: string
		header_frontdoor_id?: string
		id?:                  string
		backend_pool!: matchN(1, [#backend_pool, [_, ...] & [...#backend_pool]])
		load_balancer_enabled?: bool
		name!:                  string
		backend_pool_health_probe!: matchN(1, [#backend_pool_health_probe, list.MaxItems(5000) & [_, ...] & [...#backend_pool_health_probe]])
		resource_group_name!: string
		routing_rules?: [string]: string
		tags?: [string]:          string
		backend_pool_load_balancing!: matchN(1, [#backend_pool_load_balancing, list.MaxItems(5000) & [_, ...] & [...#backend_pool_load_balancing]])
		backend_pool_settings?: matchN(1, [#backend_pool_settings, [...#backend_pool_settings]])
		frontend_endpoint!: matchN(1, [#frontend_endpoint, list.MaxItems(500) & [_, ...] & [...#frontend_endpoint]])
		routing_rule!: matchN(1, [#routing_rule, list.MaxItems(500) & [_, ...] & [...#routing_rule]])
		timeouts?: #timeouts
	})

	#backend_pool: close({
		backend!: matchN(1, [_#defs."/$defs/backend_pool/$defs/backend", list.MaxItems(500) & [_, ...] & [..._#defs."/$defs/backend_pool/$defs/backend"]])
		health_probe_name!:   string
		id?:                  string
		load_balancing_name!: string
		name!:                string
	})

	#backend_pool_health_probe: close({
		enabled?:             bool
		id?:                  string
		interval_in_seconds?: number
		name!:                string
		path?:                string
		probe_method?:        string
		protocol?:            string
	})

	#backend_pool_load_balancing: close({
		additional_latency_milliseconds?: number
		id?:                              string
		name!:                            string
		sample_size?:                     number
		successful_samples_required?:     number
	})

	#backend_pool_settings: close({
		backend_pools_send_receive_timeout_seconds?:   number
		enforce_backend_pools_certificate_name_check!: bool
	})

	#frontend_endpoint: close({
		host_name!:                               string
		id?:                                      string
		name!:                                    string
		session_affinity_enabled?:                bool
		session_affinity_ttl_seconds?:            number
		web_application_firewall_policy_link_id?: string
	})

	#routing_rule: close({
		forwarding_configuration?: matchN(1, [_#defs."/$defs/routing_rule/$defs/forwarding_configuration", list.MaxItems(1) & [..._#defs."/$defs/routing_rule/$defs/forwarding_configuration"]])
		accepted_protocols!: [...string]
		enabled?: bool
		frontend_endpoints!: [...string]
		id?:   string
		name!: string
		patterns_to_match!: [...string]
		redirect_configuration?: matchN(1, [_#defs."/$defs/routing_rule/$defs/redirect_configuration", list.MaxItems(1) & [..._#defs."/$defs/routing_rule/$defs/redirect_configuration"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/backend_pool/$defs/backend": close({
		address!:     string
		enabled?:     bool
		host_header!: string
		http_port!:   number
		https_port!:  number
		priority?:    number
		weight?:      number
	})

	_#defs: "/$defs/routing_rule/$defs/forwarding_configuration": close({
		backend_pool_name!:                     string
		cache_duration?:                        string
		cache_enabled?:                         bool
		cache_query_parameter_strip_directive?: string
		cache_query_parameters?: [...string]
		cache_use_dynamic_compression?: bool
		custom_forwarding_path?:        string
		forwarding_protocol?:           string
	})

	_#defs: "/$defs/routing_rule/$defs/redirect_configuration": close({
		custom_fragment?:     string
		custom_host?:         string
		custom_path?:         string
		custom_query_string?: string
		redirect_protocol!:   string
		redirect_type!:       string
	})
}
