package data

#azurerm_dns_ns_record: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_dns_ns_record")
	close({
		timeouts?: #timeouts
		fqdn?:     string
		id?:       string
		name!:     string
		records?: [...string]
		resource_group_name!: string
		tags?: [string]: string
		ttl?:       number
		zone_name!: string
	})

	#timeouts: close({
		read?: string
	})
}
