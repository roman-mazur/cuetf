package res

#cloudflare_zero_trust_risk_scoring_integration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_zero_trust_risk_scoring_integration")
	close({
		// The Cloudflare account tag.
		account_tag?: string

		// Whether this integration is enabled. If disabled, no risk
		// changes will be exported to the third-party.
		active?: bool

		// When the integration was created in RFC3339 format.
		created_at?: string
		account_id!: string

		// The id of the integration, a UUIDv4.
		id?: string

		// Available values: "Okta".
		integration_type!: string

		// A reference id that can be supplied by the client. Currently
		// this should be set to the Access-Okta IDP ID (a UUIDv4).
		// https://developers.cloudflare.com/api/operations/access-identity-providers-get-an-access-identity-provider
		reference_id?: string

		// The base url of the tenant, e.g. "https://tenant.okta.com".
		tenant_url!: string

		// The URL for the Shared Signals Framework configuration, e.g.
		// "/.well-known/sse-configuration/{integration_uuid}/".
		// https://openid.net/specs/openid-sse-framework-1_0.html#rfc.section.6.2.1.
		well_known_url?: string
	})
}
