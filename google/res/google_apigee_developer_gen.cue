package res

#google_apigee_developer: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_apigee_developer")
	close({
		// Time at which the developer was created in milliseconds since
		// epoch.
		created_at?: string

		// Email address of the developer. This value is used to uniquely
		// identify the developer in Apigee hybrid. Note that the email
		// address has to be in lowercase only..
		email!: string

		// First name of the developer.
		first_name!: string

		// Time at which the developer was last modified in milliseconds
		// since epoch.
		last_modified_at?: string
		id?:               string

		// Last name of the developer.
		last_name!: string

		// The Apigee Organization associated with the Apigee instance,
		// in the format 'organizations/{{org_name}}'.
		org_id!: string

		// Name of the Apigee organization in which the developer resides.
		organizatio_name?: string

		// Status of the developer. Valid values are active and inactive.
		status?: string
		attributes?: matchN(1, [#attributes, [...#attributes]])
		timeouts?: #timeouts

		// User name of the developer. Not used by Apigee hybrid.
		user_name!: string
	})

	#attributes: close({
		// Key of the attribute
		name?: string

		// Value of the attribute
		value?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
