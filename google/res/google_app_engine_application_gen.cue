package res

import "list"

#google_app_engine_application: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_app_engine_application")
	close({
		// Identifier of the app.
		app_id?: string

		// The domain to authenticate users with when using App Engine's
		// User API.
		auth_domain?: string

		// The GCS bucket code is being stored in for this app.
		code_bucket?: string

		// The GCS bucket content is being stored in for this app.
		default_bucket?: string
		database_type?:  string

		// The default hostname for this app.
		default_hostname?: string

		// The GCR domain used for storing managed Docker images for this
		// app.
		gcr_domain?: string

		// The location to serve the app from.
		location_id!: string
		id?:          string

		// Unique name of the app.
		name?: string
		feature_settings?: matchN(1, [#feature_settings, list.MaxItems(1) & [...#feature_settings]])
		iap?: matchN(1, [#iap, list.MaxItems(1) & [...#iap]])
		timeouts?: #timeouts

		// The project ID to create the application under.
		project?: string

		// The serving status of the app.
		serving_status?: string

		// The SSL policy that will be applied to the application. If set
		// to Modern it will restrict traffic with TLS \u003c 1.2 and
		// allow only Modern Ciphers suite
		ssl_policy?: string

		// A list of dispatch rule blocks. Each block has a domain, path,
		// and service field.
		url_dispatch_rule?: [...close({
			domain?:  string
			path?:    string
			service?: string
		})]
	})

	#feature_settings: close({
		split_health_checks!: bool
	})

	#iap: close({
		// Adapted for use with the app
		enabled?: bool

		// OAuth2 client ID to use for the authentication flow.
		oauth2_client_id!: string

		// OAuth2 client secret to use for the authentication flow. The
		// SHA-256 hash of the value is returned in the
		// oauth2ClientSecretSha256 field.
		oauth2_client_secret!: string

		// Hex-encoded SHA-256 hash of the client secret.
		oauth2_client_secret_sha256?: string
	})

	#timeouts: close({
		create?: string
		update?: string
	})
}
