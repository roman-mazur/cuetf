package res

#google_firebase_app_check_device_check_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_firebase_app_check_device_check_config")
	close({
		// The ID of an
		// [Apple
		// App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.iosApps#IosApp.FIELDS.app_id).
		app_id!: string

		// The key identifier of a private key enabled with DeviceCheck,
		// created in your Apple Developer account.
		key_id!: string
		id?:     string

		// The relative resource name of the DeviceCheck configuration
		// object
		name?: string

		// The contents of the private key (.p8) file associated with the
		// key specified by keyId.
		private_key!: string

		// Whether the privateKey field was previously set. Since App
		// Check will never return the
		// privateKey field, this field is the only way to find out
		// whether it was previously set.
		private_key_set?: bool
		project?:         string
		timeouts?:        #timeouts

		// Specifies the duration for which App Check tokens exchanged
		// from DeviceCheck artifacts will be valid.
		// If unset, a default value of 1 hour is assumed. Must be between
		// 30 minutes and 7 days, inclusive.
		//
		// A duration in seconds with up to nine fractional digits, ending
		// with 's'. Example: "3.5s".
		token_ttl?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
