package res

#aws_dx_bgp_peer: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_dx_bgp_peer")
	close({
		address_family!: string
		amazon_address?: string
		aws_device?:     string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:               string
		bgp_asn!:              number
		bgp_auth_key?:         string
		timeouts?:             #timeouts
		bgp_peer_id?:          string
		bgp_status?:           string
		customer_address?:     string
		id?:                   string
		virtual_interface_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
