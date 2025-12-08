package data

#azurerm_key_vault_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_key_vault_certificate")
	close({
		certificate_data?:        string
		certificate_data_base64?: string
		certificate_policy?: [...close({
			issuer_parameters?: [...close({
				name?: string
			})]
			key_properties?: [...close({
				curve?:      string
				exportable?: bool
				key_size?:   number
				key_type?:   string
				reuse_key?:  bool
			})]
			lifetime_action?: [...close({
				action?: [...close({
					action_type?: string
				})]
				trigger?: [...close({
					days_before_expiry?:  number
					lifetime_percentage?: number
				})]
			})]
			secret_properties?: [...close({
				content_type?: string
			})]
			x509_certificate_properties?: [...close({
				extended_key_usage?: [...string]
				key_usage?: [...string]
				subject?: string
				subject_alternative_names?: [...close({
					dns_names?: [...string]
					emails?: [...string]
					upns?: [...string]
				})]
				validity_in_months?: number
			})]
		})]
		expires?:                         string
		id?:                              string
		key_vault_id!:                    string
		name!:                            string
		not_before?:                      string
		resource_manager_id?:             string
		timeouts?:                        #timeouts
		resource_manager_versionless_id?: string
		secret_id?:                       string
		tags?: [string]: string
		thumbprint?:            string
		version?:               string
		versionless_id?:        string
		versionless_secret_id?: string
	})

	#timeouts: close({
		read?: string
	})
}
