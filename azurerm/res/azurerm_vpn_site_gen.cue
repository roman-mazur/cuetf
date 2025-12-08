package res

import "list"

#azurerm_vpn_site: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_vpn_site")
	close({
		address_cidrs?: [...string]
		device_model?:        string
		device_vendor?:       string
		id?:                  string
		location!:            string
		name!:                string
		resource_group_name!: string
		link?: matchN(1, [#link, [...#link]])
		tags?: [string]: string
		o365_policy?: matchN(1, [#o365_policy, list.MaxItems(1) & [...#o365_policy]])
		timeouts?:       #timeouts
		virtual_wan_id!: string
	})

	#link: close({
		bgp?: matchN(1, [_#defs."/$defs/link/$defs/bgp", list.MaxItems(1) & [..._#defs."/$defs/link/$defs/bgp"]])
		fqdn?:          string
		id?:            string
		ip_address?:    string
		name!:          string
		provider_name?: string
		speed_in_mbps?: number
	})

	#o365_policy: close({
		traffic_category?: matchN(1, [_#defs."/$defs/o365_policy/$defs/traffic_category", list.MaxItems(1) & [..._#defs."/$defs/o365_policy/$defs/traffic_category"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/link/$defs/bgp": close({
		asn!:             number
		peering_address!: string
	})

	_#defs: "/$defs/o365_policy/$defs/traffic_category": close({
		allow_endpoint_enabled?:    bool
		default_endpoint_enabled?:  bool
		optimize_endpoint_enabled?: bool
	})
}
