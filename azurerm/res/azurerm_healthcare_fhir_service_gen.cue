package res

import "list"

#azurerm_healthcare_fhir_service: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_healthcare_fhir_service")
	close({
		access_policy_object_ids?: [...string]
		authentication!: matchN(1, [#authentication, list.MaxItems(1) & [_, ...] & [...#authentication]])
		configuration_export_storage_account_name?: string
		container_registry_login_server_url?: [...string]
		id?:                            string
		kind?:                          string
		location!:                      string
		name!:                          string
		public_network_access_enabled?: bool
		cors?: matchN(1, [#cors, list.MaxItems(1) & [...#cors]])
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		resource_group_name!: string
		oci_artifact?: matchN(1, [#oci_artifact, [...#oci_artifact]])
		timeouts?: #timeouts
		tags?: [string]: string
		workspace_id!: string
	})

	#authentication: close({
		audience!:            string
		authority!:           string
		smart_proxy_enabled?: bool
	})

	#cors: close({
		allowed_headers!: [...string]
		allowed_methods!: [...string]
		allowed_origins!: [...string]
		credentials_allowed?: bool
		max_age_in_seconds?:  number
	})

	#identity: close({
		identity_ids?: [...string]
		principal_id?: string
		tenant_id?:    string
		type!:         string
	})

	#oci_artifact: close({
		digest?:       string
		image_name?:   string
		login_server!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
