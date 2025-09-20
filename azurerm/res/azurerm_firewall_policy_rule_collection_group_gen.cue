package res

#azurerm_firewall_policy_rule_collection_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_firewall_policy_rule_collection_group")
	close({
		application_rule_collection?: matchN(1, [#application_rule_collection, [...#application_rule_collection]])
		firewall_policy_id!: string
		id?:                 string
		name!:               string
		priority!:           number
		nat_rule_collection?: matchN(1, [#nat_rule_collection, [...#nat_rule_collection]])
		network_rule_collection?: matchN(1, [#network_rule_collection, [...#network_rule_collection]])
		timeouts?: #timeouts
	})

	#application_rule_collection: close({
		rule?: matchN(1, [_#defs."/$defs/application_rule_collection/$defs/rule", [_, ...] & [..._#defs."/$defs/application_rule_collection/$defs/rule"]])
		action!:   string
		name!:     string
		priority!: number
	})

	#nat_rule_collection: close({
		rule?: matchN(1, [_#defs."/$defs/nat_rule_collection/$defs/rule", [_, ...] & [..._#defs."/$defs/nat_rule_collection/$defs/rule"]])
		action!:   string
		name!:     string
		priority!: number
	})

	#network_rule_collection: close({
		rule?: matchN(1, [_#defs."/$defs/network_rule_collection/$defs/rule", [_, ...] & [..._#defs."/$defs/network_rule_collection/$defs/rule"]])
		action!:   string
		name!:     string
		priority!: number
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/application_rule_collection/$defs/rule": close({
		description?: string
		destination_addresses?: [...string]
		destination_fqdn_tags?: [...string]
		destination_fqdns?: [...string]
		destination_urls?: [...string]
		name!: string
		source_addresses?: [...string]
		http_headers?: matchN(1, [_#defs."/$defs/application_rule_collection/$defs/rule/$defs/http_headers", [..._#defs."/$defs/application_rule_collection/$defs/rule/$defs/http_headers"]])
		source_ip_groups?: [...string]
		protocols?: matchN(1, [_#defs."/$defs/application_rule_collection/$defs/rule/$defs/protocols", [..._#defs."/$defs/application_rule_collection/$defs/rule/$defs/protocols"]])
		terminate_tls?: bool
		web_categories?: [...string]
	})

	_#defs: "/$defs/application_rule_collection/$defs/rule/$defs/http_headers": close({
		name!:  string
		value!: string
	})

	_#defs: "/$defs/application_rule_collection/$defs/rule/$defs/protocols": close({
		port!: number
		type!: string
	})

	_#defs: "/$defs/nat_rule_collection/$defs/rule": close({
		description?:         string
		destination_address?: string
		destination_ports?: [...string]
		name!: string
		protocols!: [...string]
		source_addresses?: [...string]
		source_ip_groups?: [...string]
		translated_address?: string
		translated_fqdn?:    string
		translated_port!:    number
	})

	_#defs: "/$defs/network_rule_collection/$defs/rule": close({
		description?: string
		destination_addresses?: [...string]
		destination_fqdns?: [...string]
		destination_ip_groups?: [...string]
		destination_ports!: [...string]
		name!: string
		protocols!: [...string]
		source_addresses?: [...string]
		source_ip_groups?: [...string]
	})
}
