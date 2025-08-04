package data

#cloudflare_zero_trust_risk_scoring_integration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_risk_scoring_integration")
	close({
		account_id!: string

		// The Cloudflare account tag.
		account_tag?: string

		// Whether this integration is enabled and should export changes
		// in risk score.
		active?: bool

		// When the integration was created in RFC3339 format.
		created_at?: string

		// Available values: "Okta".
		integration_type?: string

		// A reference ID defined by the client.
		// Should be set to the Access-Okta IDP integration ID.
		// Useful when the risk-score integration needs to be associated
		// with a secondary asset and recalled using that ID.
		reference_id?:   string
		id?:             string
		integration_id?: string

		// The base URL for the tenant. E.g. "https://tenant.okta.com".
		tenant_url?: string

		// The URL for the Shared Signals Framework configuration, e.g.
		// "/.well-known/sse-configuration/{integration_uuid}/".
		// https://openid.net/specs/openid-sse-framework-1_0.html#rfc.section.6.2.1.
		well_known_url?: string
	})
}
