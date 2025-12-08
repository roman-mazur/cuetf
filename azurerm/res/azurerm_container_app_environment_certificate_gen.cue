package res

import "list"

#azurerm_container_app_environment_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_container_app_environment_certificate")
	close({
		certificate_blob_base64?: string
		certificate_password?:    string

		// The expiration date for the Certificate.
		expiration_date?:              string
		container_app_environment_id!: string

		// The date of issue for the Certificate.
		issue_date?: string
		id?:         string

		// The Certificate Issuer.
		issuer?: string

		// The Subject Name for the Certificate.
		subject_name?: string
		name!:         string

		// The Thumbprint of the Certificate.
		thumbprint?: string
		tags?: [string]: string
		certificate_key_vault?: matchN(1, [#certificate_key_vault, list.MaxItems(1) & [...#certificate_key_vault]])
		timeouts?: #timeouts
	})

	#certificate_key_vault: close({
		identity?:            string
		key_vault_secret_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
