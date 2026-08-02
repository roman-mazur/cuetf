package res

azurerm_private_dns_cname_record: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_private_dns_cname_record")
	close({
		timeouts?:            #timeouts
		fqdn?:                string
		id?:                  string
		name!:                string
		private_dns_zone_id!: string
		record!:              string
		tags?: [string]: string
		ttl!: number
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
