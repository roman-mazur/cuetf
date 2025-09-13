package data

#google_vmwareengine_network_peering: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_vmwareengine_network_peering")
	close({
		// Creation time of this resource.
		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and
		// up to nine fractional digits. Examples: "2014-10-02T15:01:23Z"
		// and "2014-10-02T15:01:23.045123456Z".
		create_time?: string

		// User-provided description for this network peering.
		description?: string

		// True if custom routes are exported to the peered network; false
		// otherwise.
		export_custom_routes?: bool

		// True if all subnet routes with a public IP address range are
		// exported; false otherwise.
		export_custom_routes_with_public_ip?: bool
		id?:                                  string

		// True if custom routes are imported from the peered network;
		// false otherwise.
		import_custom_routes?: bool

		// True if custom routes are imported from the peered network;
		// false otherwise.
		import_custom_routes_with_public_ip?: bool

		// The ID of the Network Peering.
		name!: string

		// The relative resource name of the network to peer with a
		// standard VMware Engine network.
		// The provided network can be a consumer VPC network or another
		// standard VMware Engine network.
		peer_network?: string

		// The type of the network to peer with the VMware Engine network.
		// Possible values: ["STANDARD", "VMWARE_ENGINE_NETWORK",
		// "PRIVATE_SERVICES_ACCESS", "NETAPP_CLOUD_VOLUMES",
		// "THIRD_PARTY_SERVICE", "DELL_POWERSCALE",
		// "GOOGLE_CLOUD_NETAPP_VOLUMES"]
		peer_network_type?: string
		project?:           string

		// State of the network peering.
		// This field has a value of 'ACTIVE' when there's a matching
		// configuration in the peer network.
		// New values may be added to this enum when appropriate.
		state?: string

		// Details about the current state of the network peering.
		state_details?: string

		// System-generated unique identifier for the resource.
		uid?: string

		// Last updated time of this resource.
		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to nine
		// fractional digits. Examples: "2014-10-02T15:01:23Z" and
		// "2014-10-02T15:01:23.045123456Z".
		update_time?: string

		// The relative resource name of the VMware Engine network.
		// Specify the name in the following form:
		// projects/{project}/locations/{location}/vmwareEngineNetworks/{vmwareEngineNetworkId}
		// where {project}
		// can either be a project number or a project ID.
		vmware_engine_network?: string

		// The canonical name of the VMware Engine network in the form:
		// projects/{project_number}/locations/{location}/vmwareEngineNetworks/{vmwareEngineNetworkId}
		vmware_engine_network_canonical?: string
	})
}
