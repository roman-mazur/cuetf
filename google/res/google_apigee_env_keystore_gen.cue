package res

#google_apigee_env_keystore: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_apigee_env_keystore")
	close({
		// Aliases in this keystore.
		aliases?: [...string]

		// The Apigee environment group associated with the Apigee
		// environment,
		// in the format
		// 'organizations/{{org_name}}/environments/{{env_name}}'.
		env_id!:   string
		id?:       string
		timeouts?: #timeouts

		// The name of the newly created keystore.
		name?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
