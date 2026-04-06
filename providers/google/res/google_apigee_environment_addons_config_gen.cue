package res

#google_apigee_environment_addons_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_apigee_environment_addons_config")
	close({
		timeouts?: #timeouts

		// Flag to enable/disable Analytics.
		analytics_enabled?: bool

		// The Apigee environment group associated with the Apigee
		// environment,
		// in the format
		// 'organizations/{{org_name}}/environments/{{env_name}}'.
		env_id!: string
		id?:     string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
