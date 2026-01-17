package res

import "list"

#google_network_services_multicast_domain_activation: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_network_services_multicast_domain_activation")
	close({
		// The URL of the admin network.
		admin_network?: string

		// The timestamp when the multicast domain activation was
		// created.
		create_time?: string

		// An optional text description of the multicast domain
		// activation.
		description?: string

		// Option to allow disabling placement policy for multicast
		// infrastructure.
		// Only applicable if the activation is for a domain associating
		// with a
		// multicast domain group.
		disable_placement_policy?: bool

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string
		id?: string

		// Labels as key-value pairs
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// Resource ID segment making up resource 'name'. It identifies
		// the resource within its parent collection as described in
		// https://google.aip.dev/122.
		location!: string

		// The resource name of the multicast domain to activate.
		// Use the following format:
		// 'projects/*/locations/global/multicastDomains/*'.
		multicast_domain!: string

		// A unique name for the multicast domain activation.
		// The name is restricted to letters, numbers, and hyphen, with
		// the first
		// character a letter, and the last a letter or a number. The name
		// must not
		// exceed 48 characters.
		multicast_domain_activation_id!: string
		timeouts?:                       #timeouts
		traffic_spec?: matchN(1, [#traffic_spec, list.MaxItems(1) & [...#traffic_spec]])

		// Identifier. The resource name of the multicast domain
		// activation.
		// Use the following format:
		// 'projects/*/locations/*/multicastDomainActivations/*'.
		name?:    string
		project?: string

		// The multicast resource's state.
		state?: [...close({
			state?: string
		})]

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The Google-generated UUID for the resource. This value is
		// unique across all multicast domain activation resources. If a
		// domain
		// activation is deleted and another with the same name is
		// created, the new
		// domain activation is assigned a different unique_id.
		unique_id?: string

		// The timestamp when the multicast domain activation was most
		// recently updated.
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#traffic_spec: close({
		// Aggregated egress Packet-Per-Second for all multicast groups in
		// the domain
		// in this zone.
		aggr_egress_pps?: string

		// Aggregated ingress Packet-Per-Second for all multicast groups
		// in the domain
		// in this zone. Default to (aggregated_egress_pps /
		// max_per_group_subscribers) * 2.
		aggr_ingress_pps?: string

		// Average packet size (Default to 512 bytes).
		avg_packet_size?: number

		// Maximum ingress Packet-Per-Second for a single multicast group
		// in this
		// zone. Default to aggregated_ingress_pps / 2.
		max_per_group_ingress_pps?: string

		// Maximum number of subscribers for a single multicast group in
		// this zone.
		// Default to max(50, aggregated_egress_pps /
		// aggregated_ingress_pps).
		max_per_group_subscribers?: string
	})
}
