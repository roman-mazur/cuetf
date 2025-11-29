package res

#google_apigee_envgroup: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_apigee_envgroup")
	close({
		// Hostnames of the environment group.
		hostnames?: [...string]
		id?: string

		// The resource ID of the environment group.
		name!:     string
		timeouts?: #timeouts

		// The Apigee Organization associated with the Apigee environment
		// group,
		// in the format 'organizations/{{org_name}}'.
		org_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
