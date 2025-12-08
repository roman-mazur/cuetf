package res

#google_apigee_environment_keyvaluemaps_entries: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_apigee_environment_keyvaluemaps_entries")
	close({
		// The Apigee environment keyvalumaps Id associated with the
		// Apigee environment,
		// in the format
		// 'organizations/{{org_name}}/environments/{{env_name}}/keyvaluemaps/{{keyvaluemap_name}}'.
		env_keyvaluemap_id!: string
		id?:                 string

		// Required. Resource URI that can be used to identify the scope
		// of the key value map entries.
		name!:     string
		timeouts?: #timeouts

		// Required. Data or payload that is being retrieved and
		// associated with the unique key.
		value!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
