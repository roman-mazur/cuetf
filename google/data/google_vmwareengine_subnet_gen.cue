package data

#google_vmwareengine_subnet: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_vmwareengine_subnet")
	close({
		// Creation time of this resource.
		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and
		// up to nine fractional digits. Examples: "2014-10-02T15:01:23Z"
		// and "2014-10-02T15:01:23.045123456Z".
		create_time?: string

		// DHCP address ranges.
		dhcp_address_ranges?: [...close({
			first_address?: string
			last_address?:  string
		})]

		// The canonical identifier of the logical router that this subnet
		// is attached to.
		gateway_id?: string

		// The IP address of the gateway of this subnet. Must fall within
		// the IP prefix defined above.
		gateway_ip?: string

		// The IP address range of the subnet in CIDR format.
		ip_cidr_range?: string
		id?:            string

		// The ID of the subnet. For userDefined subnets, this name should
		// be in the format of "service-n",
		// where n ranges from 1 to 5.
		name!: string

		// The resource name of the private cloud to create a new subnet
		// in.
		// Resource names are schemeless URIs that follow the conventions
		// in https://cloud.google.com/apis/design/resource_names.
		// For example:
		// projects/my-project/locations/us-west1-a/privateClouds/my-cloud
		parent!: string

		// Whether the NSX-T configuration in the backend follows the
		// standard configuration supported by Google Cloud.
		// If false, the subnet cannot be modified through Google Cloud,
		// only through NSX-T directly.
		standard_config?: bool

		// State of the subnet.
		state?: string

		// The type of the subnet.
		type?: string

		// System-generated unique identifier for the resource.
		uid?: string

		// Last updated time of this resource.
		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to nine
		// fractional digits. Examples: "2014-10-02T15:01:23Z" and
		// "2014-10-02T15:01:23.045123456Z".
		update_time?: string

		// VLAN ID of the VLAN on which the subnet is configured.
		vlan_id?: number
	})
}
