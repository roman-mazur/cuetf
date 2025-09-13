package res

#google_apigee_environment_keyvaluemaps: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_apigee_environment_keyvaluemaps")
	close({
		timeouts?: #timeouts

		// The Apigee environment group associated with the Apigee
		// environment,
		// in the format
		// 'organizations/{{org_name}}/environments/{{env_name}}'.
		env_id!: string
		id?:     string

		// Required. ID of the key value map.
		name!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
