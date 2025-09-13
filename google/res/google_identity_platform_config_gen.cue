package res

import "list"

#google_identity_platform_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_identity_platform_config")
	close({
		// List of domains authorized for OAuth redirects.
		authorized_domains?: [...string]

		// Whether anonymous users will be auto-deleted after a period of
		// 30 days
		autodelete_anonymous_users?: bool
		id?:                         string
		blocking_functions?: matchN(1, [#blocking_functions, list.MaxItems(1) & [...#blocking_functions]])

		// The name of the Config resource
		name?: string
		client?: matchN(1, [#client, list.MaxItems(1) & [...#client]])
		mfa?: matchN(1, [#mfa, list.MaxItems(1) & [...#mfa]])
		monitoring?: matchN(1, [#monitoring, list.MaxItems(1) & [...#monitoring]])
		multi_tenant?: matchN(1, [#multi_tenant, list.MaxItems(1) & [...#multi_tenant]])
		quota?: matchN(1, [#quota, list.MaxItems(1) & [...#quota]])
		project?: string
		sign_in?: matchN(1, [#sign_in, list.MaxItems(1) & [...#sign_in]])
		sms_region_config?: matchN(1, [#sms_region_config, list.MaxItems(1) & [...#sms_region_config]])
		timeouts?: #timeouts
	})

	#blocking_functions: close({
		forward_inbound_credentials?: matchN(1, [_#defs."/$defs/blocking_functions/$defs/forward_inbound_credentials", list.MaxItems(1) & [..._#defs."/$defs/blocking_functions/$defs/forward_inbound_credentials"]])
		triggers?: matchN(1, [_#defs."/$defs/blocking_functions/$defs/triggers", [_, ...] & [..._#defs."/$defs/blocking_functions/$defs/triggers"]])
	})

	#client: close({
		permissions?: matchN(1, [_#defs."/$defs/client/$defs/permissions", list.MaxItems(1) & [..._#defs."/$defs/client/$defs/permissions"]])

		// API key that can be used when making requests for this project.
		api_key?: string

		// Firebase subdomain.
		firebase_subdomain?: string
	})

	#mfa: close({
		provider_configs?: matchN(1, [_#defs."/$defs/mfa/$defs/provider_configs", [..._#defs."/$defs/mfa/$defs/provider_configs"]])

		// A list of usable second factors for this project. Possible
		// values: ["PHONE_SMS"]
		enabled_providers?: [...string]

		// Whether MultiFactor Authentication has been enabled for this
		// project. Possible values: ["DISABLED", "ENABLED", "MANDATORY"]
		state?: string
	})

	#monitoring: close({
		request_logging?: matchN(1, [_#defs."/$defs/monitoring/$defs/request_logging", list.MaxItems(1) & [..._#defs."/$defs/monitoring/$defs/request_logging"]])
	})

	#multi_tenant: close({
		// Whether this project can have tenants or not.
		allow_tenants?: bool

		// The default cloud parent org or folder that the tenant project
		// should be created under.
		// The parent resource name should be in the format of "/", such
		// as "folders/123" or "organizations/456".
		// If the value is not set, the tenant will be created under the
		// same organization or folder as the agent project.
		default_tenant_location?: string
	})

	#quota: close({
		sign_up_quota_config?: matchN(1, [_#defs."/$defs/quota/$defs/sign_up_quota_config", list.MaxItems(1) & [..._#defs."/$defs/quota/$defs/sign_up_quota_config"]])
	})

	#sign_in: close({
		anonymous?: matchN(1, [_#defs."/$defs/sign_in/$defs/anonymous", list.MaxItems(1) & [..._#defs."/$defs/sign_in/$defs/anonymous"]])
		email?: matchN(1, [_#defs."/$defs/sign_in/$defs/email", list.MaxItems(1) & [..._#defs."/$defs/sign_in/$defs/email"]])
		phone_number?: matchN(1, [_#defs."/$defs/sign_in/$defs/phone_number", list.MaxItems(1) & [..._#defs."/$defs/sign_in/$defs/phone_number"]])

		// Whether to allow more than one account to have the same email.
		allow_duplicate_emails?: bool

		// Output only. Hash config information.
		hash_config?: [...close({
			algorithm?:      string
			memory_cost?:    number
			rounds?:         number
			salt_separator?: string
			signer_key?:     string
		})]
	})

	#sms_region_config: close({
		allow_by_default?: matchN(1, [_#defs."/$defs/sms_region_config/$defs/allow_by_default", list.MaxItems(1) & [..._#defs."/$defs/sms_region_config/$defs/allow_by_default"]])
		allowlist_only?: matchN(1, [_#defs."/$defs/sms_region_config/$defs/allowlist_only", list.MaxItems(1) & [..._#defs."/$defs/sms_region_config/$defs/allowlist_only"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/blocking_functions/$defs/forward_inbound_credentials": close({
		// Whether to pass the user's OAuth identity provider's access
		// token.
		access_token?: bool

		// Whether to pass the user's OIDC identity provider's ID token.
		id_token?: bool

		// Whether to pass the user's OAuth identity provider's refresh
		// token.
		refresh_token?: bool
	})

	_#defs: "/$defs/blocking_functions/$defs/triggers": close({
		event_type!: string

		// HTTP URI trigger for the Cloud Function.
		function_uri!: string

		// When the trigger was changed.
		update_time?: string
	})

	_#defs: "/$defs/client/$defs/permissions": close({
		// When true, end users cannot delete their account on the
		// associated project through any of our API methods
		disabled_user_deletion?: bool

		// When true, end users cannot sign up for a new account on the
		// associated project through any of our API methods
		disabled_user_signup?: bool
	})

	_#defs: "/$defs/mfa/$defs/provider_configs": close({
		totp_provider_config?: matchN(1, [_#defs."/$defs/mfa/$defs/provider_configs/$defs/totp_provider_config", list.MaxItems(1) & [..._#defs."/$defs/mfa/$defs/provider_configs/$defs/totp_provider_config"]])

		// Whether MultiFactor Authentication has been enabled for this
		// project. Possible values: ["DISABLED", "ENABLED", "MANDATORY"]
		state?: string
	})

	_#defs: "/$defs/mfa/$defs/provider_configs/$defs/totp_provider_config": close({
		// The allowed number of adjacent intervals that will be used for
		// verification to avoid clock skew.
		adjacent_intervals?: number
	})

	_#defs: "/$defs/monitoring/$defs/request_logging": close({
		// Whether logging is enabled for this project or not.
		enabled?: bool
	})

	_#defs: "/$defs/quota/$defs/sign_up_quota_config": close({
		// A sign up APIs quota that customers can override temporarily.
		// Value can be in between 1 and 1000.
		quota?: number

		// How long this quota will be active for. It is measurred in
		// seconds, e.g., Example: "9.615s".
		quota_duration?: string

		// When this quota will take affect.
		start_time?: string
	})

	_#defs: "/$defs/sign_in/$defs/anonymous": close({
		// Whether anonymous user auth is enabled for the project or not.
		enabled!: bool
	})

	_#defs: "/$defs/sign_in/$defs/email": close({
		// Whether email auth is enabled for the project or not.
		enabled!: bool

		// Whether a password is required for email auth or not. If true,
		// both an email and
		// password must be provided to sign in. If false, a user may sign
		// in via either
		// email/password or email link.
		password_required?: bool
	})

	_#defs: "/$defs/sign_in/$defs/phone_number": close({
		// Whether phone number auth is enabled for the project or not.
		enabled!: bool

		// A map of <test phone number, fake code> that can be used for
		// phone auth testing.
		test_phone_numbers?: [string]: string
	})

	_#defs: "/$defs/sms_region_config/$defs/allow_by_default": close({
		// Two letter unicode region codes to disallow as defined by
		// https://cldr.unicode.org/ The full list of these region codes
		// is here:
		// https://github.com/unicode-cldr/cldr-localenames-full/blob/master/main/en/territories.json
		disallowed_regions?: [...string]
	})

	_#defs: "/$defs/sms_region_config/$defs/allowlist_only": close({
		// Two letter unicode region codes to allow as defined by
		// https://cldr.unicode.org/ The full list of these region codes
		// is here:
		// https://github.com/unicode-cldr/cldr-localenames-full/blob/master/main/en/territories.json
		allowed_regions?: [...string]
	})
}
