package data

#azurerm_private_link_service: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_private_link_service")
	close({
		alias?: string
		auto_approval_subscription_ids?: [...string]
		enable_proxy_protocol?: bool
		id?:                    string
		load_balancer_frontend_ip_configuration_ids?: [...string]
		location?: string
		name!:     string
		nat_ip_configuration?: [...close({
			name?:                       string
			primary?:                    bool
			private_ip_address?:         string
			private_ip_address_version?: string
			subnet_id?:                  string
		})]
		resource_group_name!: string
		timeouts?:            #timeouts
		tags?: [string]: string
		visibility_subscription_ids?: [...string]
	})

	#timeouts: close({
		read?: string
	})
}
