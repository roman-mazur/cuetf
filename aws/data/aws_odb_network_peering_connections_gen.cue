package data

#aws_odb_network_peering_connections: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_odb_network_peering_connections")
	close({
		// The list of ODB peering connections. A summary of an ODB
		// peering connection.
		odb_peering_connections?: [...close({
			arn?:              string
			display_name?:     string
			id?:               string
			odb_network_arn?:  string
			peer_network_arn?: string
		})]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
	})
}
