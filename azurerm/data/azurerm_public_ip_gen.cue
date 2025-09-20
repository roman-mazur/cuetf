package data

#azurerm_public_ip: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_public_ip")
	close({
		allocation_method?:       string
		ddos_protection_mode?:    string
		ddos_protection_plan_id?: string
		domain_name_label?:       string
		fqdn?:                    string
		id?:                      string
		idle_timeout_in_minutes?: number
		ip_address?:              string
		ip_tags?: [string]: string
		ip_version?:          string
		location?:            string
		name!:                string
		timeouts?:            #timeouts
		resource_group_name!: string
		reverse_fqdn?:        string
		sku?:                 string
		tags?: [string]: string
		zones?: [...string]
	})

	#timeouts: close({
		read?: string
	})
}
