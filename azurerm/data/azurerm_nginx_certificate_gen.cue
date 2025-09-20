package data

#azurerm_nginx_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_nginx_certificate")
	close({
		certificate_virtual_path?:       string
		error_code?:                     string
		error_message?:                  string
		id?:                             string
		key_vault_secret_creation_date?: string
		key_vault_secret_id?:            string
		key_vault_secret_version?:       string
		key_virtual_path?:               string
		name!:                           string
		timeouts?:                       #timeouts
		nginx_deployment_id!:            string
		sha1_thumbprint?:                string
	})

	#timeouts: close({
		read?: string
	})
}
