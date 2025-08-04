package res

#aws_vpc_route_server_peer: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_vpc_route_server_peer")
	close({
		arn?:                  string
		endpoint_eni_address?: string
		endpoint_eni_id?:      string
		peer_address!:         string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                   string
		route_server_endpoint_id!: string
		route_server_id?:          string
		bgp_options?: matchN(1, [#bgp_options, [...#bgp_options]])
		timeouts?:             #timeouts
		route_server_peer_id?: string
		subnet_id?:            string
		tags?: [string]:     string
		tags_all?: [string]: string
		vpc_id?: string
	})

	#bgp_options: close({
		peer_asn!:                number
		peer_liveness_detection?: string
	})

	#timeouts: close({
		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		create?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		// Setting a timeout for a Delete operation is only applicable if
		// changes are saved into state before the destroy operation
		// occurs.
		delete?: string
	})
}
