package res

#aws_dx_bgp_peer: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_dx_bgp_peer")
	address_family!:       string
	amazon_address?:       string
	aws_device?:           string
	bgp_asn!:              number
	bgp_auth_key?:         string
	bgp_peer_id?:          string
	bgp_status?:           string
	customer_address?:     string
	id?:                   string
	virtual_interface_id!: string
	timeouts?:             #timeouts

	#timeouts: {
		create?: string
		delete?: string
	}
}
