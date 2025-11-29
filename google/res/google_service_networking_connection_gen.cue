package res

#google_service_networking_connection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_service_networking_connection")
	close({
		// When set to ABANDON, terraform will abandon management of the
		// resource instead of deleting it. Prevents terraform apply
		// failures with CloudSQL. Note: The resource will still exist.
		deletion_policy?: string

		// Name of VPC network connected with service producers using VPC
		// peering.
		network!: string

		// Named IP address range(s) of PEERING type reserved for this
		// service provider. Note that invoking this method with a
		// different range when connection is already established will
		// not reallocate already provisioned service producer
		// subnetworks.
		reserved_peering_ranges!: [...string]

		// Provider peering service that is managing peering connectivity
		// for a service provider organization. For Google services that
		// support this functionality it is
		// 'servicenetworking.googleapis.com'.
		service!:  string
		id?:       string
		timeouts?: #timeouts
		peering?:  string

		// When set to true, enforce an update of the reserved peering
		// ranges on the existing service networking connection in case
		// of a new connection creation failure.
		update_on_creation_fail?: bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
