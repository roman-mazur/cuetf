package res

#google_network_security_security_profile_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_network_security_security_profile_group")
	close({
		// Time the security profile group was created in UTC.
		create_time?: string

		// Reference to a SecurityProfile with the CustomIntercept
		// configuration.
		custom_intercept_profile?: string

		// Reference to a SecurityProfile with the custom mirroring
		// configuration for the SecurityProfileGroup.
		custom_mirroring_profile?: string

		// An optional description of the profile. The Max length is 512
		// characters.
		description?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// This checksum is computed by the server based on the value of
		// other fields,
		// and may be sent on update and delete requests to ensure the
		// client has an up-to-date
		// value before proceeding.
		etag?: string
		id?:   string

		// A map of key/value label pairs to assign to the resource.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The location of the security profile group.
		// The default value is 'global'.
		location?: string
		timeouts?: #timeouts

		// The name of the security profile group resource.
		name!: string

		// The name of the parent this security profile group belongs to.
		// Format: organizations/{organization_id}.
		parent?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Reference to a SecurityProfile with the threat prevention
		// configuration for the SecurityProfileGroup.
		threat_prevention_profile?: string

		// Time the security profile group was updated in UTC.
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
