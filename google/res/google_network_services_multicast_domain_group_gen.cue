package res

#google_network_services_multicast_domain_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_network_services_multicast_domain_group")
	close({
		// The timestamp when the multicast domain group was created.
		create_time?: string

		// An optional text description of the multicast domain group.
		description?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Labels as key-value pairs.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string
		id?: string

		// Resource ID segment making up resource 'name'. It identifies
		// the resource within its parent collection as described in
		// https://google.aip.dev/122.
		location!: string

		// A unique name for the multicast domain group.
		// The name is restricted to letters, numbers, and hyphen, with
		// the first
		// character a letter, and the last a letter or a number. The name
		// must not
		// exceed 48 characters.
		multicast_domain_group_id!: string

		// Multicast domains associated with the group.
		// There can be at most 2 multicast domains in a group.
		multicast_domains?: [...string]

		// Identifier. The resource name of the multicast domain group.
		// Use the following format:
		// 'projects/*/locations/global/multicastDomainGroups/*'
		name?:     string
		timeouts?: #timeouts
		project?:  string

		// The multicast resource's state.
		state?: [...close({
			state?: string
		})]

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The Google-generated UUID for the resource. This value is
		// unique across all multicast domain group resources. If a domain
		// is deleted
		// and another with the same name is created, the new domain is
		// assigned a
		// different unique_id.
		unique_id?: string

		// The timestamp when the multicast domain group was most
		// recently updated.
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
