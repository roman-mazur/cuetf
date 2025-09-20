package res

#azurerm_active_directory_domain_service_trust: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_active_directory_domain_service_trust")
	close({
		timeouts?:          #timeouts
		domain_service_id!: string
		id?:                string
		name!:              string
		password!:          string
		trusted_domain_dns_ips!: [...string]
		trusted_domain_fqdn!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
