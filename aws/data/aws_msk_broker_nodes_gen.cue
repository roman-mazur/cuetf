package data

#aws_msk_broker_nodes: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_msk_broker_nodes")
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
		region?: string
	})
}
