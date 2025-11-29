package res

import "list"

#google_identity_platform_inbound_saml_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_identity_platform_inbound_saml_config")
	close({
		// Human friendly display name.
		display_name!: string

		// If this config allows users to sign in with the provider.
		enabled?: bool
		idp_config!: matchN(1, [#idp_config, list.MaxItems(1) & [_, ...] & [...#idp_config]])
		id?: string

		// The name of the InboundSamlConfig resource. Must start with
		// 'saml.' and can only have alphanumeric characters,
		// hyphens, underscores or periods. The part after 'saml.' must
		// also start with a lowercase letter, end with an
		// alphanumeric character, and have at least 2 characters.
		name!: string
		sp_config!: matchN(1, [#sp_config, list.MaxItems(1) & [_, ...] & [...#sp_config]])
		timeouts?: #timeouts
		project?:  string
	})

	#idp_config: close({
		// Unique identifier for all SAML entities
		idp_entity_id!: string
		idp_certificates!: matchN(1, [_#defs."/$defs/idp_config/$defs/idp_certificates", [_, ...] & [..._#defs."/$defs/idp_config/$defs/idp_certificates"]])

		// Indicates if outbounding SAMLRequest should be signed.
		sign_request?: bool

		// URL to send Authentication request to.
		sso_url!: string
	})

	#sp_config: close({
		// Callback URI where responses from IDP are handled. Must start
		// with 'https://'.
		callback_uri?: string

		// The IDP's certificate data to verify the signature in the
		// SAMLResponse issued by the IDP.
		sp_certificates?: [...close({
			x509_certificate?: string
		})]

		// Unique identifier for all SAML entities.
		sp_entity_id?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/idp_config/$defs/idp_certificates": close({
		// The IdP's x509 certificate.
		x509_certificate?: string
	})
}
