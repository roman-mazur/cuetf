package res

#aws_dx_hosted_public_virtual_interface: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_dx_hosted_public_virtual_interface")
	close({
		address_family!:  string
		amazon_address?:  string
		amazon_side_asn?: string
		arn?:             string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:           string
		aws_device?:       string
		bgp_asn!:          number
		bgp_auth_key?:     string
		timeouts?:         #timeouts
		connection_id!:    string
		customer_address?: string
		id?:               string
		name!:             string
		owner_account_id!: string
		route_filter_prefixes!: [...string]
		vlan!: number
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
