package res

#google_access_context_manager_egress_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_access_context_manager_egress_policy")
	close({
		// The name of the Access Policy this resource belongs to.
		access_policy_id?: string

		// The name of the Service Perimeter to add this resource to.
		egress_policy_name!: string
		id?:                 string
		timeouts?:           #timeouts

		// A GCP resource that is inside of the service perimeter.
		resource!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
