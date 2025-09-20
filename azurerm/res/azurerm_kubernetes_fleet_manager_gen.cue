package res

import "list"

#azurerm_kubernetes_fleet_manager: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_kubernetes_fleet_manager")
	close({
		hub_profile?: matchN(1, [#hub_profile, list.MaxItems(1) & [...#hub_profile]])
		id?:                  string
		location!:            string
		name!:                string
		resource_group_name!: string
		tags?: [string]: string
		timeouts?: #timeouts
	})

	#hub_profile: close({
		dns_prefix!:         string
		fqdn?:               string
		kubernetes_version?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
