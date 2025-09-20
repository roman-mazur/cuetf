package data

#azurerm_healthcare_service: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_healthcare_service")
	close({
		access_policy_object_ids?: [...string]
		authentication_configuration?: [...close({
			audience?:            string
			authority?:           string
			smart_proxy_enabled?: bool
		})]
		cors_configuration?: [...close({
			allow_credentials?: bool
			allowed_headers?: [...string]
			allowed_methods?: [...string]
			allowed_origins?: [...string]
			max_age_in_seconds?: number
		})]
		cosmosdb_key_vault_key_versionless_id?: string
		cosmosdb_throughput?:                   number
		id?:                                    string
		kind?:                                  string
		location!:                              string
		name!:                                  string
		timeouts?:                              #timeouts
		resource_group_name!:                   string
		tags?: [string]: string
	})

	#timeouts: close({
		read?: string
	})
}
