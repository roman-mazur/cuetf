package res

import "list"

#google_integrations_auth_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_integrations_auth_config")
	close({
		// Certificate id for client certificate.
		certificate_id?: string

		// The timestamp when the auth config is created.
		//
		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to nine fractional digits. Examples:
		// "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
		create_time?: string

		// The creator's email address. Generated based on the End User
		// Credentials/LOAS role of the user making the call.
		creator_email?: string

		// Credential type of the encrypted credential.
		credential_type?: string

		// A description of the auth config.
		description?: string

		// The name of the auth config.
		display_name!: string

		// Auth credential encrypted by Cloud KMS. Can be decrypted as
		// Credential with proper KMS key.
		//
		// A base64-encoded string.
		encrypted_credential?: string

		// User can define the time to receive notification after which
		// the auth config becomes invalid. Support up to 30 days.
		// Support granularity in hours.
		//
		// A duration in seconds with up to nine fractional digits, ending
		// with 's'. Example: "3.5s".
		expiry_notification_duration?: [...string]

		// The last modifier's email address. Generated based on the End
		// User Credentials/LOAS role of the user making the call.
		last_modifier_email?: string
		id?:                  string

		// Location in which client needs to be provisioned.
		location!: string

		// Resource name of the auth config.
		name?: string
		client_certificate?: matchN(1, [#client_certificate, list.MaxItems(1) & [...#client_certificate]])
		decrypted_credential?: matchN(1, [#decrypted_credential, list.MaxItems(1) & [...#decrypted_credential]])
		timeouts?: #timeouts

		// User provided expiry time to override. For the example of
		// Salesforce, username/password credentials can be valid for 6
		// months depending on the instance settings.
		//
		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to nine fractional digits. Examples:
		// "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
		override_valid_time?: string

		// The reason / details of the current status.
		reason?: string

		// The status of the auth config.
		state?:   string
		project?: string

		// The timestamp when the auth config is modified.
		//
		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to nine fractional digits. Examples:
		// "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
		update_time?: string

		// The time until the auth config is valid. Empty or max value is
		// considered the auth config won't expire.
		//
		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to nine fractional digits. Examples:
		// "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
		valid_time?: string

		// The visibility of the auth config. Possible values: ["PRIVATE",
		// "CLIENT_VISIBLE"]
		visibility?: string
	})

	#client_certificate: close({
		// The ssl certificate encoded in PEM format. This string must
		// include the begin header and end footer lines.
		encrypted_private_key!: string

		// 'passphrase' should be left unset if private key is not
		// encrypted.
		// Note that 'passphrase' is not the password for web server, but
		// an extra layer of security to protected private key.
		passphrase?: string

		// The ssl certificate encoded in PEM format. This string must
		// include the begin header and end footer lines.
		ssl_certificate!: string
	})

	#decrypted_credential: close({
		auth_token?: matchN(1, [_#defs."/$defs/decrypted_credential/$defs/auth_token", list.MaxItems(1) & [..._#defs."/$defs/decrypted_credential/$defs/auth_token"]])
		jwt?: matchN(1, [_#defs."/$defs/decrypted_credential/$defs/jwt", list.MaxItems(1) & [..._#defs."/$defs/decrypted_credential/$defs/jwt"]])
		oauth2_authorization_code?: matchN(1, [_#defs."/$defs/decrypted_credential/$defs/oauth2_authorization_code", list.MaxItems(1) & [..._#defs."/$defs/decrypted_credential/$defs/oauth2_authorization_code"]])
		oauth2_client_credentials?: matchN(1, [_#defs."/$defs/decrypted_credential/$defs/oauth2_client_credentials", list.MaxItems(1) & [..._#defs."/$defs/decrypted_credential/$defs/oauth2_client_credentials"]])
		oidc_token?: matchN(1, [_#defs."/$defs/decrypted_credential/$defs/oidc_token", list.MaxItems(1) & [..._#defs."/$defs/decrypted_credential/$defs/oidc_token"]])
		service_account_credentials?: matchN(1, [_#defs."/$defs/decrypted_credential/$defs/service_account_credentials", list.MaxItems(1) & [..._#defs."/$defs/decrypted_credential/$defs/service_account_credentials"]])
		username_and_password?: matchN(1, [_#defs."/$defs/decrypted_credential/$defs/username_and_password", list.MaxItems(1) & [..._#defs."/$defs/decrypted_credential/$defs/username_and_password"]])

		// Credential type associated with auth configs.
		credential_type!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/decrypted_credential/$defs/auth_token": close({
		// The token for the auth type.
		token?: string

		// Authentication type, e.g. "Basic", "Bearer", etc.
		type?: string
	})

	_#defs: "/$defs/decrypted_credential/$defs/jwt": close({
		// The token calculated by the header, payload and signature.
		jwt?: string

		// Identifies which algorithm is used to generate the signature.
		jwt_header?: string

		// Contains a set of claims. The JWT specification defines seven
		// Registered Claim Names which are the standard fields commonly
		// included in tokens. Custom claims are usually also included,
		// depending on the purpose of the token.
		jwt_payload?: string

		// User's pre-shared secret to sign the token.
		secret?: string
	})

	_#defs: "/$defs/decrypted_credential/$defs/oauth2_authorization_code": close({
		// The auth url endpoint to send the auth code request to.
		auth_endpoint?: string

		// The client's id.
		client_id?: string

		// The client's secret.
		client_secret?: string

		// A space-delimited list of requested scope permissions.
		scope?: string

		// The token url endpoint to send the token request to.
		token_endpoint?: string
	})

	_#defs: "/$defs/decrypted_credential/$defs/oauth2_client_credentials": close({
		// The client's ID.
		client_id?: string

		// The client's secret.
		client_secret?: string

		// Represent how to pass parameters to fetch access token Possible
		// values: ["REQUEST_TYPE_UNSPECIFIED", "REQUEST_BODY",
		// "QUERY_PARAMETERS", "ENCODED_HEADER"]
		request_type?: string

		// A space-delimited list of requested scope permissions.
		scope?: string
		token_params?: matchN(1, [_#defs."/$defs/decrypted_credential/$defs/oauth2_client_credentials/$defs/token_params", list.MaxItems(1) & [..._#defs."/$defs/decrypted_credential/$defs/oauth2_client_credentials/$defs/token_params"]])

		// The token endpoint is used by the client to obtain an access
		// token by presenting its authorization grant or refresh token.
		token_endpoint?: string
	})

	_#defs: "/$defs/decrypted_credential/$defs/oauth2_client_credentials/$defs/token_params": close({
		entries?: matchN(1, [_#defs."/$defs/decrypted_credential/$defs/oauth2_client_credentials/$defs/token_params/$defs/entries", [..._#defs."/$defs/decrypted_credential/$defs/oauth2_client_credentials/$defs/token_params/$defs/entries"]])
	})

	_#defs: "/$defs/decrypted_credential/$defs/oauth2_client_credentials/$defs/token_params/$defs/entries": close({
		key?: matchN(1, [_#defs."/$defs/decrypted_credential/$defs/oauth2_client_credentials/$defs/token_params/$defs/entries/$defs/key", list.MaxItems(1) & [..._#defs."/$defs/decrypted_credential/$defs/oauth2_client_credentials/$defs/token_params/$defs/entries/$defs/key"]])
		value?: matchN(1, [_#defs."/$defs/decrypted_credential/$defs/oauth2_client_credentials/$defs/token_params/$defs/entries/$defs/value", list.MaxItems(1) & [..._#defs."/$defs/decrypted_credential/$defs/oauth2_client_credentials/$defs/token_params/$defs/entries/$defs/value"]])
	})

	_#defs: "/$defs/decrypted_credential/$defs/oauth2_client_credentials/$defs/token_params/$defs/entries/$defs/key": close({
		literal_value?: matchN(1, [_#defs."/$defs/decrypted_credential/$defs/oauth2_client_credentials/$defs/token_params/$defs/entries/$defs/key/$defs/literal_value", list.MaxItems(1) & [..._#defs."/$defs/decrypted_credential/$defs/oauth2_client_credentials/$defs/token_params/$defs/entries/$defs/key/$defs/literal_value"]])
	})

	_#defs: "/$defs/decrypted_credential/$defs/oauth2_client_credentials/$defs/token_params/$defs/entries/$defs/key/$defs/literal_value": close({
		// String.
		string_value?: string
	})

	_#defs: "/$defs/decrypted_credential/$defs/oauth2_client_credentials/$defs/token_params/$defs/entries/$defs/value": close({
		literal_value?: matchN(1, [_#defs."/$defs/decrypted_credential/$defs/oauth2_client_credentials/$defs/token_params/$defs/entries/$defs/value/$defs/literal_value", list.MaxItems(1) & [..._#defs."/$defs/decrypted_credential/$defs/oauth2_client_credentials/$defs/token_params/$defs/entries/$defs/value/$defs/literal_value"]])
	})

	_#defs: "/$defs/decrypted_credential/$defs/oauth2_client_credentials/$defs/token_params/$defs/entries/$defs/value/$defs/literal_value": close({
		// String.
		string_value?: string
	})

	_#defs: "/$defs/decrypted_credential/$defs/oidc_token": close({
		// Audience to be used when generating OIDC token. The audience
		// claim identifies the recipients that the JWT is intended for.
		audience?: string

		// The service account email to be used as the identity for the
		// token.
		service_account_email?: string

		// ID token obtained for the service account.
		token?: string

		// The approximate time until the token retrieved is valid.
		//
		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to nine fractional digits. Examples:
		// "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
		token_expire_time?: string
	})

	_#defs: "/$defs/decrypted_credential/$defs/service_account_credentials": close({
		// A space-delimited list of requested scope permissions.
		scope?: string

		// Name of the service account that has the permission to make the
		// request.
		service_account?: string
	})

	_#defs: "/$defs/decrypted_credential/$defs/username_and_password": close({
		// Password to be used.
		password?: string

		// Username to be used.
		username?: string
	})
}
