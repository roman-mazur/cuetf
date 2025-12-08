package res

#azurerm_public_ip: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_public_ip")
	close({
		allocation_method!:       string
		timeouts?:                #timeouts
		ddos_protection_mode?:    string
		ddos_protection_plan_id?: string
		domain_name_label?:       string
		domain_name_label_scope?: string
		edge_zone?:               string
		fqdn?:                    string
		id?:                      string
		idle_timeout_in_minutes?: number
		ip_address?:              string
		ip_tags?: [string]: string
		ip_version?:          string
		location!:            string
		name!:                string
		public_ip_prefix_id?: string
		resource_group_name!: string
		reverse_fqdn?:        string
		sku?:                 string
		sku_tier?:            string
		tags?: [string]: string
		zones?: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
