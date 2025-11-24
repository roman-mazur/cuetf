package res

#google_firebase_app_check_recaptcha_v3_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_firebase_app_check_recaptcha_v3_config")
	close({
		// The ID of an
		// [Web
		// App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.webApps#WebApp.FIELDS.app_id).
		app_id!: string

		// The relative resource name of the reCAPTCHA V3 configuration
		// object
		name?: string

		// The site secret used to identify your service for reCAPTCHA v3
		// verification.
		// For security reasons, this field will never be populated in any
		// response.
		site_secret!: string

		// Whether the siteSecret was previously set. Since we will never
		// return the siteSecret field, this field is the only way to
		// find out whether it was previously set.
		site_secret_set?: bool
		id?:              string
		timeouts?:        #timeouts
		project?:         string

		// Specifies the duration for which App Check tokens exchanged
		// from reCAPTCHA V3 artifacts will be valid.
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
