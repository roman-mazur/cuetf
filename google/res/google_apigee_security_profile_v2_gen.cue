package res

#google_apigee_security_profile_v2: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_apigee_security_profile_v2")
	close({
		// The timestamp at which this profile was created.
		create_time?: string

		// Description of the security profile.
		description?: string

		// Name of the security profile v2 resource,
		// in the format
		// 'organizations/{{org_name}}/securityProfilesV2/{{profile_id}}'.
		name?: string

		// The Apigee Organization associated with the Apigee Security
		// Profile V2,
		// in the format 'organizations/{{org_name}}'.
		org_id!: string

		// Resource ID of the security profile.
		profile_id!: string
		id?:         string
		profile_assessment_configs!: matchN(1, [#profile_assessment_configs, [_, ...] & [...#profile_assessment_configs]])
		timeouts?: #timeouts

		// The timestamp at which this profile was most recently updated.
		update_time?: string
	})

	#profile_assessment_configs: close({
		assessment!: string

		// The weight of the assessment. Possible values: ["MINOR",
		// "MODERATE", "MAJOR"]
		weight!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
