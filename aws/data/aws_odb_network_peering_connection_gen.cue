package data

#aws_odb_network_peering_connection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_odb_network_peering_connection")
	close({
		arn?: string

		// Created time of the odb network peering connection.
		created_at?: string

		// Display name of the odb network peering connection.
		display_name?: string

		// Network Peering Connection identifier.
		id!: string

		// ARN of the odb network peering connection.
		odb_network_arn?: string

		// Type of the odb peering connection.
		odb_peering_connection_type?: string

		// ARN of the peer network peering connection.
		peer_network_arn?: string

		// Progress of the odb network peering connection.
		percent_progress?: number

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string

		// Status of the odb network peering connection.
		status?: string

		// Status of the odb network peering connection.
		status_reason?: string
		tags?: [string]: string
	})
}
