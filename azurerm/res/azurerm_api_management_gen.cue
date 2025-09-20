package res

import "list"

#azurerm_api_management: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_api_management")
	close({
		client_certificate_enabled?: bool
		developer_portal_url?:       string
		gateway_disabled?:           bool
		gateway_regional_url?:       string
		gateway_url?:                string
		id?:                         string
		location!:                   string
		management_api_url?:         string
		min_api_version?:            string
		name!:                       string
		notification_sender_email?:  string
		portal_url?:                 string
		private_ip_addresses?: [...string]
		public_ip_address_id?: string
		public_ip_addresses?: [...string]
		additional_location?: matchN(1, [#additional_location, [...#additional_location]])
		public_network_access_enabled?: bool
		publisher_email!:               string
		publisher_name!:                string
		certificate?: matchN(1, [#certificate, list.MaxItems(10) & [...#certificate]])
		delegation?: matchN(1, [#delegation, list.MaxItems(1) & [...#delegation]])
		resource_group_name!: string
		scm_url?:             string
		sku_name!:            string
		tags?: [string]: string
		virtual_network_type?: string
		zones?: [...string]
		hostname_configuration?: matchN(1, [#hostname_configuration, list.MaxItems(1) & [...#hostname_configuration]])
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		protocols?: matchN(1, [#protocols, list.MaxItems(1) & [...#protocols]])
		security?: matchN(1, [#security, list.MaxItems(1) & [...#security]])
		sign_in?: matchN(1, [#sign_in, list.MaxItems(1) & [...#sign_in]])
		sign_up?: matchN(1, [#sign_up, list.MaxItems(1) & [...#sign_up]])
		tenant_access?: matchN(1, [#tenant_access, list.MaxItems(1) & [...#tenant_access]])
		timeouts?: #timeouts
		virtual_network_configuration?: matchN(1, [#virtual_network_configuration, list.MaxItems(1) & [...#virtual_network_configuration]])
	})

	#additional_location: close({
		virtual_network_configuration?: matchN(1, [_#defs."/$defs/additional_location/$defs/virtual_network_configuration", list.MaxItems(1) & [..._#defs."/$defs/additional_location/$defs/virtual_network_configuration"]])
		capacity?:             number
		gateway_disabled?:     bool
		gateway_regional_url?: string
		location!:             string
		private_ip_addresses?: [...string]
		public_ip_address_id?: string
		public_ip_addresses?: [...string]
		zones?: [...string]
	})

	#certificate: close({
		certificate_password?: string
		encoded_certificate!:  string
		expiry?:               string
		store_name!:           string
		subject?:              string
		thumbprint?:           string
	})

	#delegation: close({
		subscriptions_enabled?:     bool
		url?:                       string
		user_registration_enabled?: bool
		validation_key?:            string
	})

	#hostname_configuration: close({
		developer_portal?: matchN(1, [_#defs."/$defs/hostname_configuration/$defs/developer_portal", [..._#defs."/$defs/hostname_configuration/$defs/developer_portal"]])
		management?: matchN(1, [_#defs."/$defs/hostname_configuration/$defs/management", [..._#defs."/$defs/hostname_configuration/$defs/management"]])
		portal?: matchN(1, [_#defs."/$defs/hostname_configuration/$defs/portal", [..._#defs."/$defs/hostname_configuration/$defs/portal"]])
		proxy?: matchN(1, [_#defs."/$defs/hostname_configuration/$defs/proxy", [..._#defs."/$defs/hostname_configuration/$defs/proxy"]])
		scm?: matchN(1, [_#defs."/$defs/hostname_configuration/$defs/scm", [..._#defs."/$defs/hostname_configuration/$defs/scm"]])
	})

	#identity: close({
		identity_ids?: [...string]
		principal_id?: string
		tenant_id?:    string
		type!:         string
	})

	#protocols: close({
		http2_enabled?: bool
	})

	#security: close({
		backend_ssl30_enabled?:                               bool
		backend_tls10_enabled?:                               bool
		backend_tls11_enabled?:                               bool
		frontend_ssl30_enabled?:                              bool
		frontend_tls10_enabled?:                              bool
		frontend_tls11_enabled?:                              bool
		tls_ecdhe_ecdsa_with_aes128_cbc_sha_ciphers_enabled?: bool
		tls_ecdhe_ecdsa_with_aes256_cbc_sha_ciphers_enabled?: bool
		tls_ecdhe_rsa_with_aes128_cbc_sha_ciphers_enabled?:   bool
		tls_ecdhe_rsa_with_aes256_cbc_sha_ciphers_enabled?:   bool
		tls_rsa_with_aes128_cbc_sha256_ciphers_enabled?:      bool
		tls_rsa_with_aes128_cbc_sha_ciphers_enabled?:         bool
		tls_rsa_with_aes128_gcm_sha256_ciphers_enabled?:      bool
		tls_rsa_with_aes256_cbc_sha256_ciphers_enabled?:      bool
		tls_rsa_with_aes256_cbc_sha_ciphers_enabled?:         bool
		tls_rsa_with_aes256_gcm_sha384_ciphers_enabled?:      bool
		triple_des_ciphers_enabled?:                          bool
	})

	#sign_in: close({
		enabled!: bool
	})

	#sign_up: close({
		terms_of_service?: matchN(1, [_#defs."/$defs/sign_up/$defs/terms_of_service", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/sign_up/$defs/terms_of_service"]])
		enabled!: bool
	})

	#tenant_access: close({
		enabled!:       bool
		primary_key?:   string
		secondary_key?: string
		tenant_id?:     string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	#virtual_network_configuration: close({
		subnet_id!: string
	})

	_#defs: "/$defs/additional_location/$defs/virtual_network_configuration": close({
		subnet_id!: string
	})

	_#defs: "/$defs/hostname_configuration/$defs/developer_portal": close({
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

	_#defs: "/$defs/hostname_configuration/$defs/management": close({
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

	_#defs: "/$defs/hostname_configuration/$defs/portal": close({
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

	_#defs: "/$defs/hostname_configuration/$defs/proxy": close({
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

	_#defs: "/$defs/hostname_configuration/$defs/scm": close({
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

	_#defs: "/$defs/sign_up/$defs/terms_of_service": close({
		consent_required!: bool
		enabled!:          bool
		text?:             string
	})
}
