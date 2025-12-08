package res

#azurerm_private_dns_srv_record: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_private_dns_srv_record")
	close({
		record!: matchN(1, [#record, [_, ...] & [...#record]])
		fqdn?:                string
		id?:                  string
		name!:                string
		resource_group_name!: string
		tags?: [string]: string
		ttl!:       number
		zone_name!: string
		timeouts?:  #timeouts
	})

	#record: close({
		port!:     number
		priority!: number
		target!:   string
		weight!:   number
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
