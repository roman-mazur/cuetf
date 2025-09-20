package data

#azurerm_eventgrid_partner_namespace: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_eventgrid_partner_namespace")
	close({
		endpoint?: string
		id?:       string
		inbound_ip_rule?: [...close({
			action?:  string
			ip_mask?: string
		})]
		local_authentication_enabled?: bool
		location?:                     string
		name!:                         string
		partner_registration_id?:      string
		partner_topic_routing_mode?:   string
		public_network_access?:        string
		timeouts?:                     #timeouts
		resource_group_name!:          string
		tags?: [string]: string
	})

	#timeouts: close({
		read?: string
	})
}
