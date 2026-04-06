package data

#scaleway_iam_saml: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_iam_saml")
	close({
		// The entity ID of the SAML Identity Provider
		entity_id?: string

		// The ID of the SAML configuration
		id?: string

		// The organization ID
		organization_id?: string

		// The Service Provider information
		service_provider?: close({
			assertion_consumer_service_url?: string
			entity_id?:                      string
		})

		// The single sign-on URL of the SAML Identity Provider
		single_sign_on_url?: string

		// The status of the SAML configuration
		status?: string
	})
}
