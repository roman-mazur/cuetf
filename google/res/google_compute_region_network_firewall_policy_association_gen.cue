package res

#google_compute_region_network_firewall_policy_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_compute_region_network_firewall_policy_association")
	close({
		// The target that the firewall policy is attached to.
		attachment_target!: string

		// The firewall policy of the resource.
		firewall_policy!: string

		// The name for an association.
		name!:     string
		id?:       string
		timeouts?: #timeouts

		// The location of this resource.
		region?:  string
		project?: string

		// The short name of the firewall policy of the association.
		short_name?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
