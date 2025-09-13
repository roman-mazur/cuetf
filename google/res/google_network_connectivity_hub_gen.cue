package res

#google_network_connectivity_hub: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_network_connectivity_hub")
	close({
		// Output only. The time the hub was created.
		create_time?: string

		// An optional description of the hub.
		description?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Whether Private Service Connect transitivity is enabled for the
		// hub. If true, Private Service Connect endpoints in VPC spokes
		// attached to the hub are made accessible to other VPC spokes
		// attached to the hub. The default value is false.
		export_psc?: bool

		// Optional labels in key:value format. For more information about
		// labels, see [Requirements for
		// labels](https://cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string
		id?: string

		// Immutable. The name of the hub. Hub names must be unique. They
		// use the following form:
		// 'projects/{project_number}/locations/global/hubs/{hub_id}'
		name?: string

		// Optional. The policy mode of this hub. This field can be either
		// PRESET or CUSTOM. If unspecified, the policyMode defaults to
		// PRESET. Possible values: ["CUSTOM", "PRESET"]
		policy_mode?: string

		// Optional. The topology implemented in this hub. Currently, this
		// field is only used when policyMode = PRESET. The available
		// preset topologies are MESH and STAR. If presetTopology is
		// unspecified and policyMode = PRESET, the presetTopology
		// defaults to MESH. When policyMode = CUSTOM, the presetTopology
		// is set to PRESET_TOPOLOGY_UNSPECIFIED. Possible values:
		// ["MESH", "STAR"]
		preset_topology?: string

		// The VPC network associated with this hub's spokes. All of the
		// VPN tunnels, VLAN attachments, and router appliance instances
		// referenced by this hub's spokes must belong to this VPC
		// network. This field is read-only. Network Connectivity Center
		// automatically populates it based on the set of spokes attached
		// to the hub.
		routing_vpcs?: [...close({
			uri?: string
		})]
		timeouts?: #timeouts
		project?:  string

		// Output only. The current lifecycle state of this hub.
		state?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Output only. The Google-generated UUID for the hub. This value
		// is unique across all hub resources. If a hub is deleted and
		// another with the same name is created, the new hub is assigned
		// a different unique_id.
		unique_id?: string

		// Output only. The time the hub was last updated.
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
