package res

#azurerm_redis_firewall_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_redis_firewall_rule")
	close({
		timeouts?:            #timeouts
		end_ip!:              string
		id?:                  string
		name!:                string
		redis_cache_name!:    string
		resource_group_name!: string
		start_ip!:            string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
