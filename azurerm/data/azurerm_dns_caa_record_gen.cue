package data

#azurerm_dns_caa_record: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_dns_caa_record")
	close({
		timeouts?: #timeouts
		fqdn?:     string
		id?:       string
		name!:     string
		record?: [...close({
			flags?: number
			tag?:   string
			value?: string
		})]
		resource_group_name!: string
		tags?: [string]: string
		ttl?:       number
		zone_name!: string
	})

	#timeouts: close({
		read?: string
	})
}
