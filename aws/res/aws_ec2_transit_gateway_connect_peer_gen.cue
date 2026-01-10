package res

#aws_ec2_transit_gateway_connect_peer: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_ec2_transit_gateway_connect_peer")
	close({
		arn?:              string
		bgp_asn?:          string
		bgp_peer_address?: string
		bgp_transit_gateway_addresses?: [...string]
		id?: string
		inside_cidr_blocks!: [...string]
		timeouts?: #timeouts

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:       string
		peer_address!: string
		tags?: [string]:     string
		tags_all?: [string]: string
		transit_gateway_address?:       string
		transit_gateway_attachment_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
