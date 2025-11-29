package res

#google_iap_tunnel_dest_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_iap_tunnel_dest_group")
	close({
		// List of CIDRs that this group applies to.
		cidrs?: [...string]

		// List of FQDNs that this group applies to.
		fqdns?: [...string]

		// Unique tunnel destination group name.
		group_name!: string
		timeouts?:   #timeouts

		// Full resource name.
		name?:    string
		id?:      string
		project?: string

		// The region of the tunnel group. Must be the same as the network
		// resources in the group.
		region?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
