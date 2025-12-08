package res

import "list"

#google_network_connectivity_policy_based_route: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_network_connectivity_policy_based_route")
	close({
		// Time when the policy-based route was created.
		create_time?: string

		// An optional description of this resource.
		description?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Type of this resource.
		kind?: string
		id?:   string

		// User-defined labels.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The name of the policy based route.
		name!: string

		// Fully-qualified URL of the network that this route applies to,
		// for example: projects/my-project/global/networks/my-network.
		network!: string

		// The IP address of a global-access-enabled L4 ILB that is the
		// next hop for matching packets.
		next_hop_ilb_ip?: string

		// Other routes that will be referenced to determine the next hop
		// of the packet. Possible values: ["DEFAULT_ROUTING"]
		next_hop_other_routes?: string
		filter!: matchN(1, [#filter, list.MaxItems(1) & [_, ...] & [...#filter]])
		interconnect_attachment?: matchN(1, [#interconnect_attachment, list.MaxItems(1) & [...#interconnect_attachment]])
		timeouts?: #timeouts
		virtual_machine?: matchN(1, [#virtual_machine, list.MaxItems(1) & [...#virtual_machine]])

		// The priority of this policy-based route. Priority is used to
		// break ties in cases where there are more than one matching
		// policy-based routes found. In cases where multiple
		// policy-based routes are matched, the one with the
		// lowest-numbered priority value wins. The default value is
		// 1000. The priority value must be from 1 to 65535, inclusive.
		priority?: number

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
		project?: string

		// Time when the policy-based route was created.
		update_time?: string

		// If potential misconfigurations are detected for this route,
		// this field will be populated with warning messages.
		warnings?: [...close({
			code?: string
			data?: [string]: string
			warning_message?: string
		})]
	})

	#filter: close({
		// The destination IP range of outgoing packets that this
		// policy-based route applies to. Default is "0.0.0.0/0".
		dest_range?: string

		// The IP protocol that this policy-based route applies to. Valid
		// values are 'TCP', 'UDP', and 'ALL'. Default is 'ALL'.
		ip_protocol?: string

		// Internet protocol versions this policy-based route applies to.
		// Possible values: ["IPV4", "IPV6"]
		protocol_version!: string

		// The source IP range of outgoing packets that this policy-based
		// route applies to. Default is "0.0.0.0/0".
		src_range?: string
	})

	#interconnect_attachment: close({
		// Cloud region to install this policy-based route on for
		// Interconnect attachments. Use 'all' to install it on all
		// Interconnect attachments.
		region!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#virtual_machine: close({
		// A list of VM instance tags that this policy-based route applies
		// to. VM instances that have ANY of tags specified here will
		// install this PBR.
		tags!: [...string]
	})
}
