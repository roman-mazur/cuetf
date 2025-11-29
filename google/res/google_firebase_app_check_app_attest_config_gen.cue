package res

#google_firebase_app_check_app_attest_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_firebase_app_check_app_attest_config")
	close({
		// The ID of an
		// [Apple
		// App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.iosApps#IosApp.FIELDS.app_id).
		app_id!: string

		// The relative resource name of the App Attest configuration
		// object
		name?: string
		id?:   string

		// Specifies the duration for which App Check tokens exchanged
		// from App Attest artifacts will be valid.
		// If unset, a default value of 1 hour is assumed. Must be between
		// 30 minutes and 7 days, inclusive.
		//
		// A duration in seconds with up to nine fractional digits, ending
		// with 's'. Example: "3.5s".
		token_ttl?: string
		project?:   string
		timeouts?:  #timeouts
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
