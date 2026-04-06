package res

import "list"

#azurerm_frontdoor_custom_https_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_frontdoor_custom_https_configuration")
	close({
		custom_https_configuration?: matchN(1, [#custom_https_configuration, list.MaxItems(1) & [...#custom_https_configuration]])
		timeouts?:                          #timeouts
		custom_https_provisioning_enabled!: bool
		frontend_endpoint_id!:              string
		id?:                                string
	})

	#custom_https_configuration: close({
		azure_key_vault_certificate_secret_name?:    string
		azure_key_vault_certificate_secret_version?: string
		azure_key_vault_certificate_vault_id?:       string
		certificate_source?:                         string
		minimum_tls_version?:                        string
		provisioning_state?:                         string
		provisioning_substate?:                      string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
