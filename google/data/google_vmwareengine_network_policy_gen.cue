package data

#google_vmwareengine_network_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_vmwareengine_network_policy")
	close({
		// Creation time of this resource.
		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and
		// up to nine fractional digits. Examples: "2014-10-02T15:01:23Z"
		// and "2014-10-02T15:01:23.045123456Z".
		create_time?: string

		// User-provided description for this network policy.
		description?: string

		// IP address range in CIDR notation used to create internet
		// access and external IP access.
		// An RFC 1918 CIDR block, with a "/26" prefix, is required. The
		// range cannot overlap with any
		// prefixes either in the consumer VPC network or in use by the
		// private clouds attached to that VPC network.
		edge_services_cidr?: string

		// Network service that allows External IP addresses to be
		// assigned to VMware workloads.
		// This service can only be enabled when internetAccess is also
		// enabled.
		external_ip?: [...close({
			enabled?: bool
			state?:   string
		})]

		// Network service that allows VMware workloads to access the
		// internet.
		internet_access?: [...close({
			enabled?: bool
			state?:   string
		})]
		id?: string

		// The resource name of the location (region) to create the new
		// network policy in.
		// Resource names are schemeless URIs that follow the conventions
		// in https://cloud.google.com/apis/design/resource_names.
		// For example: projects/my-project/locations/us-central1
		location!: string

		// The ID of the Network Policy.
		name!: string

		// System-generated unique identifier for the resource.
		uid?:     string
		project?: string

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
