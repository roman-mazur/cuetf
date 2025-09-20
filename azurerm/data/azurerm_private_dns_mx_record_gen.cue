package data

#azurerm_private_dns_mx_record: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_private_dns_mx_record")
	close({
		timeouts?: #timeouts
		fqdn?:     string
		id?:       string
		name?:     string
		record?: [...close({
			exchange?:   string
			preference?: number
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
