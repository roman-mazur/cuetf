package res

#azurerm_api_management_custom_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_api_management_custom_domain")
	close({
		developer_portal?: matchN(1, [#developer_portal, [...#developer_portal]])
		gateway?: matchN(1, [#gateway, [...#gateway]])
		management?: matchN(1, [#management, [...#management]])
		portal?: matchN(1, [#portal, [...#portal]])
		scm?: matchN(1, [#scm, [...#scm]])
		timeouts?:          #timeouts
		api_management_id!: string
		id?:                string
	})

	#developer_portal: close({
		certificate?:                     string
		certificate_password?:            string
		certificate_source?:              string
		certificate_status?:              string
		expiry?:                          string
		host_name!:                       string
		key_vault_certificate_id?:        string
		negotiate_client_certificate?:    bool
		ssl_keyvault_identity_client_id?: string
		subject?:                         string
		thumbprint?:                      string
	})

	#gateway: close({
		certificate?:                     string
		certificate_password?:            string
		certificate_source?:              string
		certificate_status?:              string
		default_ssl_binding?:             bool
		expiry?:                          string
		host_name!:                       string
		key_vault_certificate_id?:        string
		negotiate_client_certificate?:    bool
		ssl_keyvault_identity_client_id?: string
		subject?:                         string
		thumbprint?:                      string
	})

	#management: close({
		certificate?:                     string
		certificate_password?:            string
		certificate_source?:              string
		certificate_status?:              string
		expiry?:                          string
		host_name!:                       string
		key_vault_certificate_id?:        string
		negotiate_client_certificate?:    bool
		ssl_keyvault_identity_client_id?: string
		subject?:                         string
		thumbprint?:                      string
	})

	#portal: close({
		certificate?:                     string
		certificate_password?:            string
		certificate_source?:              string
		certificate_status?:              string
		expiry?:                          string
		host_name!:                       string
		key_vault_certificate_id?:        string
		negotiate_client_certificate?:    bool
		ssl_keyvault_identity_client_id?: string
		subject?:                         string
		thumbprint?:                      string
	})

	#scm: close({
		certificate?:                     string
		certificate_password?:            string
		certificate_source?:              string
		certificate_status?:              string
		expiry?:                          string
		host_name!:                       string
		key_vault_certificate_id?:        string
		negotiate_client_certificate?:    bool
		ssl_keyvault_identity_client_id?: string
		subject?:                         string
		thumbprint?:                      string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
