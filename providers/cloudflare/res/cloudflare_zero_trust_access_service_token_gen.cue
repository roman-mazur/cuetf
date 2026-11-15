package res

cloudflare_zero_trust_access_service_token: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_zero_trust_access_service_token")
	close({
		// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
		account_id?: string

		// The Client ID for the service token. Access will check for this value in the
		// `CF-Access-Client-ID` request header.
		client_id?: string

		// The Client Secret for the service token. Access will check for this value in
		// the `CF-Access-Client-Secret` request header.
		client_secret?: string

		// A version number identifying the current `client_secret` associated with the
		// service token. Incrementing it triggers a rotation; the previous secret will
		// still be accepted until the time indicated by
		// `previous_client_secret_expires_at`. If the service token was reported as
		// leaked, `previous_client_secret_expires_at` is not required, may not be in
		// the future, and the previous secret is discarded immediately.
		client_secret_version?: number

		// The duration for how long the service token will be valid. Must be in the
		// format `300ms` or `2h45m`, or the special value `forever` for non-expiring
		// tokens. Valid time units are: ns, us (or µs), ms, s, m, h. The default is 1
		// year in hours (8760h).
		duration?: string

		// Whether the service token is enabled. A disabled service token cannot be used
		// to authenticate; both its current and previous `client_secret` stop being
		// accepted, but the token itself is preserved and can be re-enabled. A service
		// token reported as leaked is disabled automatically and cannot be re-enabled
		// until its secret is rotated; attempting to do so returns a 409. Defaults to
		// enabled when omitted on create.
		enabled?:    bool
		expires_at?: string

		// The ID of the service token.
		id?: string

		// Where the leaked `client_secret` was found, if provided by the reporter.
		// Omitted if the token has not been reported as leaked.
		leak_report_url?: string

		// When a secret scanning partner reported this service token's `client_secret`
		// as leaked. A leaked service token is disabled and must be rotated before it
		// can be re-enabled. Cleared once the secret is rotated. Omitted if the token
		// has not been reported as leaked.
		leak_reported_at?: string

		// The secret scanning partner that reported the leak. Omitted if the token has
		// not been reported as leaked.
		leak_reporter?: string

		// The name of the service token.
		name!: string

		// The expiration of the previous `client_secret`. This can be modified at any
		// point after a rotation. For example, you may extend it further into the
		// future if you need more time to update services with the new secret; or move
		// it into the past to immediately invalidate the previous token in case of
		// compromise. Rotating a service token that was reported as leaked discards
		// the previous secret entirely, so no grace period can be set.
		previous_client_secret_expires_at?: string

		// Tags associated with the service token, as key-value pairs. On update,
		// replaces all existing tags.
		tags?: [string]: string

		// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
		zone_id?: string
	})
}
