package res

#google_compute_organization_security_policy_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_compute_organization_security_policy_association")
	close({
		// The resource that the security policy is attached to.
		attachment_id!: string

		// The display name of the security policy of the association.
		display_name?: string

		// The name for an association.
		name!:     string
		id?:       string
		timeouts?: #timeouts

		// The security policy ID of the association.
		policy_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
