package data

#azurerm_healthcare_fhir_service: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_healthcare_fhir_service")
	close({
		access_policy_object_ids?: [...string]
		authentication?: [...close({
			audience?:            string
			authority?:           string
			smart_proxy_enabled?: bool
		})]
		configuration_export_storage_account_name?: string
		container_registry_login_server_url?: [...string]
		cors?: [...close({
			allowed_headers?: [...string]
			allowed_methods?: [...string]
			allowed_origins?: [...string]
			credentials_allowed?: bool
			max_age_in_seconds?:  number
		})]
		id?: string
		identity?: [...close({
			identity_ids?: [...string]
			principal_id?: string
			tenant_id?:    string
			type?:         string
		})]
		kind?:     string
		timeouts?: #timeouts
		location?: string
		name!:     string
		tags?: [string]: string
		workspace_id!: string
	})

	#timeouts: close({
		read?: string
	})
}
