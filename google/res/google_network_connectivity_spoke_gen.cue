package res

import "list"

#google_network_connectivity_spoke: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_network_connectivity_spoke")
	close({
		// Output only. The time the spoke was created.
		create_time?: string

		// An optional description of the spoke.
		description?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// The name of the group that this spoke is associated with.
		group?: string

		// Immutable. The URI of the hub that this spoke is attached to.
		hub!: string
		id?:  string

		// Optional labels in key:value format. For more information about
		// labels, see [Requirements for
		// labels](https://cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The location for the resource
		location!: string

		// Immutable. The name of the spoke. Spoke names must be unique.
		name!:    string
		project?: string

		// The reasons for the current state in the lifecycle
		reasons?: [...close({
			code?:         string
			message?:      string
			user_details?: string
		})]
		linked_interconnect_attachments?: matchN(1, [#linked_interconnect_attachments, list.MaxItems(1) & [...#linked_interconnect_attachments]])
		linked_producer_vpc_network?: matchN(1, [#linked_producer_vpc_network, list.MaxItems(1) & [...#linked_producer_vpc_network]])
		linked_router_appliance_instances?: matchN(1, [#linked_router_appliance_instances, list.MaxItems(1) & [...#linked_router_appliance_instances]])
		linked_vpc_network?: matchN(1, [#linked_vpc_network, list.MaxItems(1) & [...#linked_vpc_network]])
		linked_vpn_tunnels?: matchN(1, [#linked_vpn_tunnels, list.MaxItems(1) & [...#linked_vpn_tunnels]])
		timeouts?: #timeouts

		// Output only. The current lifecycle state of this spoke.
		state?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Output only. The Google-generated UUID for the spoke. This
		// value is unique across all spoke resources. If a spoke is
		// deleted and another with the same name is created, the new
		// spoke is assigned a different unique_id.
		unique_id?: string

		// Output only. The time the spoke was last updated.
		update_time?: string
	})

	#linked_interconnect_attachments: close({
		// IP ranges allowed to be included during import from hub (does
		// not control transit connectivity).
		// The only allowed value for now is "ALL_IPV4_RANGES".
		include_import_ranges?: [...string]

		// A value that controls whether site-to-site data transfer is
		// enabled for these resources. Note that data transfer is
		// available only in supported locations.
		site_to_site_data_transfer!: bool

		// The URIs of linked interconnect attachment resources
		uris!: [...string]
	})

	#linked_producer_vpc_network: close({
		// IP ranges encompassing the subnets to be excluded from peering.
		exclude_export_ranges?: [...string]

		// IP ranges allowed to be included from peering.
		include_export_ranges?: [...string]

		// The URI of the Service Consumer VPC that the Producer VPC is
		// peered with.
		network!: string

		// The name of the VPC peering between the Service Consumer VPC
		// and the Producer VPC (defined in the Tenant project) which is
		// added to the NCC hub. This peering must be in ACTIVE state.
		peering!: string

		// The URI of the Producer VPC.
		producer_network?: string
	})

	#linked_router_appliance_instances: close({
		instances?: matchN(1, [_#defs."/$defs/linked_router_appliance_instances/$defs/instances", [_, ...] & [..._#defs."/$defs/linked_router_appliance_instances/$defs/instances"]])

		// IP ranges allowed to be included during import from hub (does
		// not control transit connectivity).
		// The only allowed value for now is "ALL_IPV4_RANGES".
		include_import_ranges?: [...string]

		// A value that controls whether site-to-site data transfer is
		// enabled for these resources. Note that data transfer is
		// available only in supported locations.
		site_to_site_data_transfer!: bool
	})

	#linked_vpc_network: close({
		// IP ranges encompassing the subnets to be excluded from peering.
		exclude_export_ranges?: [...string]

		// IP ranges allowed to be included from peering.
		include_export_ranges?: [...string]

		// The URI of the VPC network resource.
		uri!: string
	})

	#linked_vpn_tunnels: close({
		// IP ranges allowed to be included during import from hub (does
		// not control transit connectivity).
		// The only allowed value for now is "ALL_IPV4_RANGES".
		include_import_ranges?: [...string]

		// A value that controls whether site-to-site data transfer is
		// enabled for these resources. Note that data transfer is
		// available only in supported locations.
		site_to_site_data_transfer!: bool

		// The URIs of linked VPN tunnel resources.
		uris!: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/linked_router_appliance_instances/$defs/instances": close({
		// The IP address on the VM to use for peering.
		ip_address!: string

		// The URI of the virtual machine resource
		virtual_machine!: string
	})
}
