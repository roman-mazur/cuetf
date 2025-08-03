package res

#aws_dx_bgp_peer: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_dx_bgp_peer")
	close({
		address_family!:       string
		timeouts?:             #timeouts
		amazon_address?:       string
		aws_device?:           string
		bgp_asn!:              number
		bgp_auth_key?:         string
		bgp_peer_id?:          string
		bgp_status?:           string
		customer_address?:     string
		id?:                   string
		region?:               string
		virtual_interface_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
