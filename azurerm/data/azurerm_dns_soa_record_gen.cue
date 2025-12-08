package data

#azurerm_dns_soa_record: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_dns_soa_record")
	close({
		email?:               string
		expire_time?:         number
		fqdn?:                string
		host_name?:           string
		id?:                  string
		minimum_ttl?:         number
		name?:                string
		refresh_time?:        number
		resource_group_name!: string
		retry_time?:          number
		serial_number?:       number
		tags?: [string]: string
		timeouts?:  #timeouts
		ttl?:       number
		zone_name!: string
	})

	#timeouts: close({
		read?: string
	})
}
