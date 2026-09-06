package res

google_service_networking_connection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_service_networking_connection")
	close({
		timeouts?: #timeouts

		// Whether Terraform will be prevented from destroying the connection. Defaults to "DELETE".
		// When set to "PREVENT", destroying the resource will fail.
		// When set to "ABANDON", the resource is removed from Terraform state without
		// deleting the connection in the API. The VPC peering created by this connection
		// is left in place, which will block deletion of the network.
		// When set to "DELETE", the connection is deleted.
		// When set to "REMOVE_PEERING", the connection is deleted, and if the API refuses
		// because service producer resources still use it, the VPC peering is removed from
		// the network instead so that the network can be deleted. Only use this once the
		// service instances using the connection (such as Cloud SQL) are already deleted.
		deletion_policy?: string
		id?:              string

		// Name of VPC network connected with service producers using VPC peering.
		network!: string

		// Named IP address range(s) of PEERING type reserved for this service provider.
		// Note that invoking this method with a different range when connection is
		// already established will not reallocate already provisioned service producer
		// subnetworks.
		reserved_peering_ranges!: [...string]
		peering?: string

		// Provider peering service that is managing peering connectivity for a service
		// provider organization. For Google services that support this functionality
		// it is 'servicenetworking.googleapis.com'.
		service!: string

		// When set to true, enforce an update of the reserved peering ranges on the
		// existing service networking connection in case of a new connection creation
		// failure.
		update_on_creation_fail?: bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
