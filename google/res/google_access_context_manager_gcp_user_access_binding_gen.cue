package res

import "list"

#google_access_context_manager_gcp_user_access_binding: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_access_context_manager_gcp_user_access_binding")
	close({
		// Optional. Access level that a user must have to be granted
		// access. Only one access level is supported, not multiple. This
		// repeated field must have exactly one element. Example:
		// "accessPolicies/9522/accessLevels/device_trusted"
		access_levels?: [...string]

		// Required. Immutable. Google Group id whose members are subject
		// to this binding's restrictions. See "id" in the G Suite
		// Directory API's Groups resource. If a group's email
		// address/alias is changed, this resource will continue to point
		// at the changed group. This field does not accept group email
		// addresses or aliases. Example: "01d520gv4vjcrht"
		group_key!: string
		id?:        string

		// Immutable. Assigned by the server during creation. The last
		// segment has an arbitrary length and has only URI unreserved
		// characters (as defined by RFC 3986 Section 2.3). Should not be
		// specified by the client during creation. Example:
		// "organizations/256/gcpUserAccessBindings/b3-BhcX_Ud5N"
		name?: string
		scoped_access_settings?: matchN(1, [#scoped_access_settings, [...#scoped_access_settings]])
		session_settings?: matchN(1, [#session_settings, list.MaxItems(1) & [...#session_settings]])

		// Required. ID of the parent organization.
		organization_id!: string
		timeouts?:        #timeouts
	})

	#scoped_access_settings: close({
		active_settings?: matchN(1, [_#defs."/$defs/scoped_access_settings/$defs/active_settings", list.MaxItems(1) & [..._#defs."/$defs/scoped_access_settings/$defs/active_settings"]])
		dry_run_settings?: matchN(1, [_#defs."/$defs/scoped_access_settings/$defs/dry_run_settings", list.MaxItems(1) & [..._#defs."/$defs/scoped_access_settings/$defs/dry_run_settings"]])
		scope?: matchN(1, [_#defs."/$defs/scoped_access_settings/$defs/scope", list.MaxItems(1) & [..._#defs."/$defs/scoped_access_settings/$defs/scope"]])
	})

	#session_settings: close({
		// Optional. How long a user is allowed to take between actions
		// before a new access token must be issued. Only set for Google
		// Cloud apps.
		max_inactivity?: string

		// Optional. The session length. Setting this field to zero is
		// equal to disabling session. Also can set infinite session by
		// flipping the enabled bit to false below. If useOidcMaxAge is
		// true, for OIDC apps, the session length will be the minimum of
		// this field and OIDC max_age param.
		session_length?: string

		// Optional. This field enables or disables Google Cloud session
		// length. When false, all fields set above will be disregarded
		// and the session length is basically infinite.
		session_length_enabled?: bool

		// Optional. The session challenges proposed to users when the
		// Google Cloud session length is up. Possible values: ["LOGIN",
		// "SECURITY_KEY", "PASSWORD"]
		session_reauth_method?: string

		// Optional. Only useful for OIDC apps. When false, the OIDC
		// max_age param, if passed in the authentication request will be
		// ignored. When true, the re-auth period will be the minimum of
		// the sessionLength field and the max_age OIDC param.
		use_oidc_max_age?: bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/scoped_access_settings/$defs/active_settings": close({
		session_settings?: matchN(1, [_#defs."/$defs/scoped_access_settings/$defs/active_settings/$defs/session_settings", list.MaxItems(1) & [..._#defs."/$defs/scoped_access_settings/$defs/active_settings/$defs/session_settings"]])

		// Optional. Access level that a user must have to be granted
		// access. Only one access level is supported, not multiple. This
		// repeated field must have exactly one element. Example:
		// "accessPolicies/9522/accessLevels/device_trusted"
		access_levels?: [...string]
	})

	_#defs: "/$defs/scoped_access_settings/$defs/active_settings/$defs/session_settings": close({
		// Optional. How long a user is allowed to take between actions
		// before a new access token must be issued. Only set for Google
		// Cloud apps.
		max_inactivity?: string

		// Optional. The session length. Setting this field to zero is
		// equal to disabling session. Also can set infinite session by
		// flipping the enabled bit to false below. If useOidcMaxAge is
		// true, for OIDC apps, the session length will be the minimum of
		// this field and OIDC max_age param.
		session_length?: string

		// Optional. This field enables or disables Google Cloud session
		// length. When false, all fields set above will be disregarded
		// and the session length is basically infinite.
		session_length_enabled?: bool

		// Optional. The session challenges proposed to users when the
		// Google Cloud session length is up. Possible values: ["LOGIN",
		// "SECURITY_KEY", "PASSWORD"]
		session_reauth_method?: string

		// Optional. Only useful for OIDC apps. When false, the OIDC
		// max_age param, if passed in the authentication request will be
		// ignored. When true, the re-auth period will be the minimum of
		// the sessionLength field and the max_age OIDC param.
		use_oidc_max_age?: bool
	})

	_#defs: "/$defs/scoped_access_settings/$defs/dry_run_settings": close({
		// Optional. Access level that a user must have to be granted
		// access. Only one access level is supported, not multiple. This
		// repeated field must have exactly one element. Example:
		// "accessPolicies/9522/accessLevels/device_trusted"
		access_levels?: [...string]
	})

	_#defs: "/$defs/scoped_access_settings/$defs/scope": close({
		client_scope?: matchN(1, [_#defs."/$defs/scoped_access_settings/$defs/scope/$defs/client_scope", list.MaxItems(1) & [..._#defs."/$defs/scoped_access_settings/$defs/scope/$defs/client_scope"]])
	})

	_#defs: "/$defs/scoped_access_settings/$defs/scope/$defs/client_scope": close({
		restricted_client_application?: matchN(1, [_#defs."/$defs/scoped_access_settings/$defs/scope/$defs/client_scope/$defs/restricted_client_application", list.MaxItems(1) & [..._#defs."/$defs/scoped_access_settings/$defs/scope/$defs/client_scope/$defs/restricted_client_application"]])
	})

	_#defs: "/$defs/scoped_access_settings/$defs/scope/$defs/client_scope/$defs/restricted_client_application": close({
		// The OAuth client ID of the application.
		client_id?: string

		// The name of the application. Example: "Cloud Console"
		name?: string
	})
}
