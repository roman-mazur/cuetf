package res

#aws_dx_transit_virtual_interface: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_dx_transit_virtual_interface")
	close({
		address_family!:  string
		amazon_address?:  string
		amazon_side_asn?: string
		arn?:             string
		aws_device?:      string
		bgp_asn!:         number

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:              string
		bgp_auth_key?:        string
		connection_id!:       string
		customer_address?:    string
		timeouts?:            #timeouts
		dx_gateway_id!:       string
		id?:                  string
		jumbo_frame_capable?: bool
		mtu?:                 number
		name!:                string
		sitelink_enabled?:    bool
		tags?: [string]:     string
		tags_all?: [string]: string
		vlan!: number
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
