package res

#aws_vpc_route_server_peer: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_vpc_route_server_peer")
	close({
		arn?:                  string
		endpoint_eni_address?: string
		bgp_options?: matchN(1, [#bgp_options, [...#bgp_options]])
		timeouts?:                 #timeouts
		endpoint_eni_id?:          string
		peer_address!:             string
		region?:                   string
		route_server_endpoint_id!: string
		route_server_id?:          string
		route_server_peer_id?:     string
		subnet_id?:                string
		tags?: [string]:     string
		tags_all?: [string]: string
		vpc_id?: string
	})

	#bgp_options: close({
		peer_asn!:                number
		peer_liveness_detection?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
