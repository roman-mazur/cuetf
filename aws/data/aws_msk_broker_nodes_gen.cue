package data

#aws_msk_broker_nodes: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_msk_broker_nodes")
	close({
		cluster_arn!: string
		id?:          string
		node_info_list?: [...close({
			attached_eni_id?:       string
			broker_id?:             number
			client_subnet?:         string
			client_vpc_ip_address?: string
			endpoints?: [...string]
			node_arn?: string
		})]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
	})
}
