package res

#google_apigee_instance_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_apigee_instance_attachment")
	close({
		// The resource ID of the environment.
		environment!: string
		id?:          string

		// The Apigee instance associated with the Apigee environment,
		// in the format
		// 'organizations/{{org_name}}/instances/{{instance_name}}'.
		instance_id!: string
		timeouts?:    #timeouts

		// The name of the newly created attachment (output parameter).
		name?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
