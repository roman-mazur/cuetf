package res

#google_firebase_app_check_play_integrity_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_firebase_app_check_play_integrity_config")
	close({
		// The ID of an
		// [Android
		// App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.androidApps#AndroidApp.FIELDS.app_id).
		app_id!: string

		// The relative resource name of the Play Integrity configuration
		// object
		name?: string
		id?:   string

		// Specifies the duration for which App Check tokens exchanged
		// from Play Integrity artifacts will be valid.
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
