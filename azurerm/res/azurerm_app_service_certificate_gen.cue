package res

#azurerm_app_service_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_app_service_certificate")
	close({
		app_service_plan_id?: string
		expiration_date?:     string
		friendly_name?:       string
		host_names?: [...string]
		hosting_environment_profile_id?: string
		id?:                             string
		issue_date?:                     string
		issuer?:                         string
		key_vault_id?:                   string
		key_vault_secret_id?:            string
		location!:                       string
		name!:                           string
		password?:                       string
		pfx_blob?:                       string
		resource_group_name!:            string
		timeouts?:                       #timeouts
		subject_name?:                   string
		tags?: [string]: string
		thumbprint?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
