package data

#azurerm_vmware_private_cloud: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_vmware_private_cloud")
	close({
		circuit?: [...close({
			express_route_id?:                 string
			express_route_private_peering_id?: string
			primary_subnet_cidr?:              string
			secondary_subnet_cidr?:            string
		})]
		hcx_cloud_manager_endpoint?:  string
		id?:                          string
		internet_connection_enabled?: bool
		location?:                    string
		management_cluster?: [...close({
			hosts?: [...string]
			id?:   number
			size?: number
		})]
		management_subnet_cidr?:      string
		name!:                        string
		network_subnet_cidr?:         string
		nsxt_certificate_thumbprint?: string
		nsxt_manager_endpoint?:       string
		provisioning_subnet_cidr?:    string
		resource_group_name!:         string
		sku_name?:                    string
		tags?: [string]: string
		timeouts?:                       #timeouts
		vcenter_certificate_thumbprint?: string
		vcsa_endpoint?:                  string
		vmotion_subnet_cidr?:            string
	})

	#timeouts: close({
		read?: string
	})
}
