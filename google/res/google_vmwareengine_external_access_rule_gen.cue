package res

#google_vmwareengine_external_access_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_vmwareengine_external_access_rule")
	close({
		// The action that the external access rule performs. Possible
		// values: ["ALLOW", "DENY"]
		action!: string

		// Creation time of this resource.
		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and
		// up to nine fractional digits. Examples: "2014-10-02T15:01:23Z"
		// and "2014-10-02T15:01:23.045123456Z".
		create_time?: string

		// User-provided description for the external access rule.
		description?: string

		// A list of destination ports to which the external access rule
		// applies.
		destination_ports!: [...string]

		// The IP protocol to which the external access rule applies.
		ip_protocol!: string
		id?:          string

		// The ID of the external access rule.
		name!: string

		// The resource name of the network policy.
		// Resource names are schemeless URIs that follow the conventions
		// in https://cloud.google.com/apis/design/resource_names.
		// For example:
		// projects/my-project/locations/us-west1-a/networkPolicies/my-policy
		parent!: string

		// External access rule priority, which determines the external
		// access rule to use when multiple rules apply.
		priority!: number
		destination_ip_ranges!: matchN(1, [#destination_ip_ranges, [_, ...] & [...#destination_ip_ranges]])
		source_ip_ranges!: matchN(1, [#source_ip_ranges, [_, ...] & [...#source_ip_ranges]])
		timeouts?: #timeouts

		// A list of source ports to which the external access rule
		// applies.
		source_ports!: [...string]

		// State of the Cluster.
		state?: string

		// System-generated unique identifier for the resource.
		uid?: string

		// Last updated time of this resource.
		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to nine
		// fractional digits. Examples: "2014-10-02T15:01:23Z" and
		// "2014-10-02T15:01:23.045123456Z".
		update_time?: string
	})

	#destination_ip_ranges: close({
		// The name of an 'ExternalAddress' resource.
		external_address?: string

		// An IP address range in the CIDR format.
		ip_address_range?: string
	})

	#source_ip_ranges: close({
		// A single IP address.
		ip_address?: string

		// An IP address range in the CIDR format.
		ip_address_range?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
