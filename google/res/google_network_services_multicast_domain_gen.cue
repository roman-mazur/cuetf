package res

import "list"

#google_network_services_multicast_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_network_services_multicast_domain")
	close({
		// The resource name of the multicast admin VPC network.
		// Use the following format:
		// 'projects/{project}/locations/global/networks/{network}'.
		admin_network!: string

		// The timestamp when the multicast domain was created.
		create_time?: string

		// An optional text description of the multicast domain.
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

		// The multicast domain group this domain should be associated
		// with.
		// Use the following format:
		// 'projects/{project}/locations/global/multicastDomainGroups/{multicast_domain_group}'.
		multicast_domain_group?: string

		// A unique name for the multicast domain.
		// The name is restricted to letters, numbers, and hyphen, with
		// the first
		// character a letter, and the last a letter or a number. The name
		// must not
		// exceed 48 characters.
		multicast_domain_id!: string

		// Identifier. The resource name of the multicast domain.
		// Use the following format:
		// 'projects/*/locations/global/multicastDomains/*'
		name?: string
		connection_config!: matchN(1, [#connection_config, list.MaxItems(1) & [_, ...] & [...#connection_config]])
		timeouts?: #timeouts
		ull_multicast_domain?: matchN(1, [#ull_multicast_domain, list.MaxItems(1) & [...#ull_multicast_domain]])

		// The multicast resource's state.
		state?: [...close({
			state?: string
		})]
		project?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The Google-generated UUID for the resource. This value is
		// unique across all multicast domain resources. If a domain is
		// deleted and
		// another with the same name is created, the new domain is
		// assigned a
		// different unique_id.
		unique_id?: string

		// The timestamp when the multicast domain was most recently
		// updated.
		update_time?: string
	})

	#connection_config: close({
		// The VPC connection type.
		// Possible values:
		// NCC
		// SAME_VPC
		connection_type!: string

		// The resource name of the
		// [NCC](https://cloud.google.com/network-connectivity-center)
		// hub.
		// Use the following format:
		// 'projects/{project}/locations/global/hubs/{hub}'.
		ncc_hub?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#ull_multicast_domain: close({
		// The preconfigured Ultra-Low-Latency domain name.
		preconfigured_ull_domain?: string
	})
}
