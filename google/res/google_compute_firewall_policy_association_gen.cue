package res

#google_compute_firewall_policy_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_compute_firewall_policy_association")
	close({
		// The target that the firewall policy is attached to.
		attachment_target!: string

		// The firewall policy of the resource.
		//
		// This field can be updated to refer to a different Firewall
		// Policy, which will create a new association from that new
		// firewall policy with the flag to override the existing
		// attachmentTarget's policy association.
		//
		// **Note** Due to potential risks with this operation it is
		// *highly* recommended to use the 'create_before_destroy' life
		// cycle option
		// on your exisiting firewall policy so as to prevent a situation
		// where your attachment target has no associated policy.
		firewall_policy!: string

		// The name for an association.
		name!:     string
		id?:       string
		timeouts?: #timeouts

		// The short name of the firewall policy of the association.
		short_name?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
