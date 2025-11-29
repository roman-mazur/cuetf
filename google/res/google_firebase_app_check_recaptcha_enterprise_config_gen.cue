package res

#google_firebase_app_check_recaptcha_enterprise_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_firebase_app_check_recaptcha_enterprise_config")
	close({
		// The ID of an
		// [Web
		// App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.webApps#WebApp.FIELDS.app_id).
		app_id!: string
		id?:     string

		// The relative resource name of the reCAPTCHA Enterprise
		// configuration object
		name?:    string
		project?: string

		// The score-based site key created in reCAPTCHA Enterprise used
		// to invoke reCAPTCHA and generate the reCAPTCHA tokens for your
		// application.
		//
		// **Important**: This is not the siteSecret (as it is in
		// reCAPTCHA v3), but rather your score-based reCAPTCHA
		// Enterprise site key.
		site_key!: string
		timeouts?: #timeouts

		// Specifies the duration for which App Check tokens exchanged
		// from reCAPTCHA Enterprise artifacts will be valid.
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
