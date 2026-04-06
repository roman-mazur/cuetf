package res

#scaleway_iam_saml_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_iam_saml_certificate")
	close({
		// The content of the SAML certificate
		content!: string

		// The expiration date and time of the SAML certificate
		expires_at?: string

		// The ID of the SAML certificate
		id?: string

		// The organization ID
		organization_id?: string

		// The origin of the SAML certificate
		origin?: string

		// The ID of the SAML configuration
		saml_id?: string

		// The type of the SAML certificate
		type!: string
	})
}
