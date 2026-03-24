package data

#scaleway_iam_saml_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_iam_saml_certificate")
	close({
		// The ID of the SAML certificate
		certificate_id!: string

		// The content of the SAML certificate
		content?: string

		// The expiration date and time of the SAML certificate
		expires_at?: string

		// The origin of the SAML certificate. Possible values are:
		// `scaleway`, `identity_provider`.
		origin?: string

		// The type of the SAML certificate. Possible values are:
		// `signing`, `encryption`.
		type?: string
	})
}
