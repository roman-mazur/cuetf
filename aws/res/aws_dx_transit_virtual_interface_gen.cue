package res

#aws_dx_transit_virtual_interface: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_dx_transit_virtual_interface")
	address_family!:      string
	amazon_address?:      string
	amazon_side_asn?:     string
	arn?:                 string
	aws_device?:          string
	bgp_asn!:             number
	bgp_auth_key?:        string
	connection_id!:       string
	customer_address?:    string
	dx_gateway_id!:       string
	id?:                  string
	jumbo_frame_capable?: bool
	mtu?:                 number
	name!:                string
	sitelink_enabled?:    bool
	tags?: [string]:     string
	tags_all?: [string]: string
	vlan!:     number
	timeouts?: #timeouts

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
