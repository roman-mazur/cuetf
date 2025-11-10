package res

#azurerm_firewall_application_rule_collection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_firewall_application_rule_collection")
	close({
		rule!: matchN(1, [#rule, [_, ...] & [...#rule]])
		action!:              string
		azure_firewall_name!: string
		id?:                  string
		name!:                string
		priority!:            number
		resource_group_name!: string
		timeouts?:            #timeouts
	})

	#rule: close({
		protocol?: matchN(1, [_#defs."/$defs/rule/$defs/protocol", [..._#defs."/$defs/rule/$defs/protocol"]])
		description?: string
		fqdn_tags?: [...string]
		name!: string
		source_addresses?: [...string]
		source_ip_groups?: [...string]
		target_fqdns?: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/rule/$defs/protocol": close({
		port!: number
		type!: string
	})
}
