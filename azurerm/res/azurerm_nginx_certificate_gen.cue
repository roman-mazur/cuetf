package res

#azurerm_nginx_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_nginx_certificate")
	close({
		timeouts?:                 #timeouts
		certificate_virtual_path!: string
		id?:                       string
		key_vault_secret_id!:      string
		key_virtual_path!:         string
		name!:                     string
		nginx_deployment_id!:      string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
