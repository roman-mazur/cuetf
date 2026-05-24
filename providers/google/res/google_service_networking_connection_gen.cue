package res

#google_service_networking_connection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_service_networking_connection")
	close({
		timeouts?: #timeouts

		// Whether Terraform will be prevented from destroying the
		// instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete
		// the instance,
		// the command will fail if this field is set to "PREVENT" in
		// Terraform state.
		// When set to "ABANDON", the command will remove the resource
		// from Terraform
		// management without updating or deleting the resource in the
		// API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string
		id?:              string

		// Name of VPC network connected with service producers using VPC
		// peering.
		network!: string
		peering?: string

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
		service!: string

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
