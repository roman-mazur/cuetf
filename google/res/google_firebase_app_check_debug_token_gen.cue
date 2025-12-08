package res

#google_firebase_app_check_debug_token: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_firebase_app_check_debug_token")
	close({
		// The ID of a
		// [Web
		// App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.webApps#WebApp.FIELDS.app_id),
		// [Apple
		// App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.iosApps#IosApp.FIELDS.app_id),
		// or [Android
		// App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.androidApps#AndroidApp.FIELDS.app_id)
		app_id!: string

		// The last segment of the resource name of the debug token.
		debug_token_id?: string

		// A human readable display name used to identify this debug
		// token.
		display_name!: string
		id?:           string
		project?:      string
		timeouts?:     #timeouts

		// The secret token itself. Must be provided during creation, and
		// must be a UUID4,
		// case insensitive. You may use a method of your choice such as
		// random/random_uuid
		// to generate the token.
		//
		// This field is immutable once set, and cannot be updated. You
		// can, however, delete
		// this debug token to revoke it.
		//
		// For security reasons, this field will never be populated in any
		// response.
		token!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
