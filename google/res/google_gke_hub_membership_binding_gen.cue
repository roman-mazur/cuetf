package res

#google_gke_hub_membership_binding: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_gke_hub_membership_binding")
	close({
		// Time the MembershipBinding was created in UTC.
		create_time?: string

		// Time the MembershipBinding was deleted in UTC.
		delete_time?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Labels for this Membership binding.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string
		id?: string

		// Location of the membership
		location!: string

		// The client-provided identifier of the membership binding.
		membership_binding_id!: string

		// Id of the membership
		membership_id!: string

		// The resource name for the membershipbinding itself
		name?: string

		// A Workspace resource name in the format
		// 'projects/*/locations/*/scopes/*'.
		scope!:    string
		timeouts?: #timeouts
		project?:  string

		// State of the membership binding resource.
		state?: [...close({
			code?: string
		})]

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Google-generated UUID for this resource.
		uid?: string

		// Time the MembershipBinding was updated in UTC.
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
