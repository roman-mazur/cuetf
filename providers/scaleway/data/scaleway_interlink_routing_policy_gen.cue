package data

#scaleway_interlink_routing_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_interlink_routing_policy")
	close({
		// The date and time of the creation of the routing policy
		created_at?: string
		id?:         string

		// IP prefixes version of the routing policy
		is_ipv6?: bool

		// The name of the routing policy
		name?: string

		// The Organization ID the routing policy is associated with
		organization_id?: string

		// IP prefixes to accept from the peer (ranges of route
		// announcements to accept)
		prefix_filter_in?: [...string]

		// IP prefix filters to advertise to the peer (ranges of routes to
		// advertise)
		prefix_filter_out?: [...string]

		// The project_id you want to attach the resource to
		project_id?: string

		// The region you want to attach the resource to
		region?: string

		// The ID of the routing policy
		routing_policy_id?: string

		// The list of tags associated with the routing policy
		tags?: [...string]

		// The date and time of the last update of the routing policy
		updated_at?: string
	})
}
