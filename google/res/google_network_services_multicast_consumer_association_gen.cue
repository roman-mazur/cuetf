package res

#google_network_services_multicast_consumer_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_network_services_multicast_consumer_association")
	close({
		// [Output only] The timestamp when the multicast consumer
		// association was
		// created.
		create_time?: string

		// An optional text description of the multicast consumer
		// association.
		description?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Labels as key-value pairs
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

		// A unique name for the multicast consumer association.
		// The name is restricted to letters, numbers, and hyphen, with
		// the first
		// character a letter, and the last a letter or a number. The name
		// must not
		// exceed 48 characters.
		multicast_consumer_association_id!: string

		// The resource name of the multicast domain activation that is in
		// the
		// same zone as this multicast consumer association.
		// Use the following format:
		// // 'projects/*/locations/*/multicastDomainActivations/*'.
		multicast_domain_activation!: string

		// Identifier. The resource name of the multicast consumer
		// association.
		// Use the following format:
		// 'projects/*/locations/*/multicastConsumerAssociations/*'.
		name?: string

		// The resource name of the multicast consumer VPC network.
		// Use following format:
		// 'projects/{project}/locations/global/networks/{network}'.
		network!: string

		// [Output only] A Compute Engine (placement
		// policy)[https://cloud.google.com/compute/docs/instances/placement-policies-overview]
		// that can be used to place virtual machine (VM) instances as
		// multicast
		// consumers close to the multicast infrastructure created for
		// this domain,
		// on a best effort basis.
		placement_policy?: string
		timeouts?:         #timeouts

		// The multicast resource's state.
		state?: [...close({
			state?: string
		})]

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
		project?: string

		// [Output only] The Google-generated UUID for the resource. This
		// value is
		// unique across all multicast consumer association resources. If
		// a consumer
		// association is deleted and another with the same name is
		// created, the new
		// consumer association is assigned a different unique_id.
		unique_id?: string

		// [Output only] The timestamp when the Multicast Consumer
		// Association was
		// most recently updated.
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
