package res

import "list"

#azurerm_private_link_service: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_private_link_service")
	close({
		alias?: string
		auto_approval_subscription_ids?: [...string]
		destination_ip_address?: string
		enable_proxy_protocol?:  bool
		fqdns?: [...string]
		id?: string
		nat_ip_configuration?: matchN(1, [#nat_ip_configuration, list.MaxItems(8) & [_, ...] & [...#nat_ip_configuration]])
		load_balancer_frontend_ip_configuration_ids?: [...string]
		timeouts?:            #timeouts
		location!:            string
		name!:                string
		resource_group_name!: string
		tags?: [string]: string
		visibility_subscription_ids?: [...string]
	})

	#nat_ip_configuration: close({
		name!:                       string
		primary!:                    bool
		private_ip_address?:         string
		private_ip_address_version?: string
		subnet_id!:                  string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
