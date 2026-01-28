package res

#aws_odb_network_peering_connection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_odb_network_peering_connection")
	close({
		arn?: string

		// Created time of the odb network peering connection.
		created_at?: string

		// Display name of the odb network peering connection. Changing
		// this will force terraform to create new resource
		display_name!: string
		id?:           string

		// ARN of the odb network peering connection.
		odb_network_arn?: string

		// Required field. The unique identifier of the ODB network that
		// initiates the peering connection. A sample ID is
		// odbpcx-abcdefgh12345678. Changing this will force terraform to
		// create new resource.
		odb_network_id?: string

		// Type of the odb peering connection.
		odb_peering_connection_type?: string

		// ARN of the peer network peering connection.
		peer_network_arn?: string

		// Required field. The unique identifier of the ODB peering
		// connection. Changing this will force terraform to create new
		// resource
		peer_network_id!: string

		// Progress of the odb network peering connection.
		percent_progress?: number
		timeouts?:         #timeouts

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string

		// Status of the odb network peering connection.
		status?: string

		// The reason for the current status of the ODB peering
		// connection..
		status_reason?: string
		tags?: [string]:     string
		tags_all?: [string]: string
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

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		update?: string
	})
}
