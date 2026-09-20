package res

google_compute_network_edge_security_service: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_compute_network_edge_security_service")
	close({
		timeouts?: #timeouts

		// Creation timestamp in RFC3339 text format.
		creation_timestamp?: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// Free-text description of the resource.
		description?: string

		// Fingerprint of this resource. A hash of the contents stored in this object.
		// This field is used in optimistic locking. This field will be ignored when
		// inserting a NetworkEdgeSecurityService.
		// An up-to-date fingerprint must be provided in order to update the
		// NetworkEdgeSecurityService, otherwise the request will fail with error 412
		// conditionNotMet.
		fingerprint?: string
		id?:          string

		// Name of the resource. Provided by the client when the resource is created.
		name!: string

		// The region of the gateway security policy.
		region?:  string
		project?: string

		// The resource URL for the network edge security service associated with this
		// network edge security service.
		security_policy?: string

		// Server-defined URL for the resource.
		self_link?: string

		// Server-defined URL for this resource with the resource id.
		self_link_with_service_id?: string

		// The unique identifier for the resource. This identifier is defined by the server.
		service_id?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
