package res

#google_apigee_envgroup_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_apigee_envgroup_attachment")
	close({
		// The Apigee environment group associated with the Apigee
		// environment,
		// in the format
		// 'organizations/{{org_name}}/envgroups/{{envgroup_name}}'.
		envgroup_id!: string

		// The resource ID of the environment.
		environment!: string
		id?:          string
		timeouts?:    #timeouts

		// The name of the newly created attachment (output parameter).
		name?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
