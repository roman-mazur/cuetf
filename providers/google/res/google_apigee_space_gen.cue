package res

#google_apigee_space: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_apigee_space")
	close({
		timeouts?: #timeouts

		// Create timestamp of the space.
		create_time?: string

		// The display name of the Space.
		display_name!: string
		id?:           string

		// Identifier. Id of the space. This field is used as the resource
		// name, and must follow AIP-122 guidelines.
		name?: string

		// The Apigee Organization associated with the Apigee Space, in
		// the format 'organizations/{{org_name}}'.
		org_id!: string

		// Space ID of the Apigee Space.
		space_id!: string

		// Last modified timestamp of the space.
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
