package data

google_vmwareengine_external_access_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_vmwareengine_external_access_rule")
	close({
		// The action that the external access rule performs. Possible values: ["ALLOW", "DENY"]
		action?: string

		// Creation time of this resource.
		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and
		// up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and
		// "2014-10-02T15:01:23.045123456Z".
		create_time?: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// User-provided description for the external access rule.
		description?: string

		// If destination ranges are specified, the external access rule applies only to
		// traffic that has a destination IP address in these ranges.
		destination_ip_ranges?: [...close({
			external_address?: string
			ip_address_range?: string
		})]

		// A list of destination ports to which the external access rule applies.
		destination_ports?: [...string]
		id?: string

		// The IP protocol to which the external access rule applies.
		ip_protocol?: string

		// The ID of the external access rule.
		name!: string

		// The resource name of the network policy.
		// Resource names are schemeless URIs that follow the conventions in
		// https://cloud.google.com/apis/design/resource_names.
		// For example: projects/my-project/locations/us-west1-a/networkPolicies/my-policy
		parent!: string

		// External access rule priority, which determines the external access rule to
		// use when multiple rules apply.
		priority?: number

		// If source ranges are specified, the external access rule applies only to
		// traffic that has a source IP address in these ranges.
		source_ip_ranges?: [...close({
			ip_address?:       string
			ip_address_range?: string
		})]

		// A list of source ports to which the external access rule applies.
		source_ports?: [...string]

		// State of the Cluster.
		state?: string

		// System-generated unique identifier for the resource.
		uid?: string

		// Last updated time of this resource.
		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine
		// fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
		update_time?: string
	})
}
