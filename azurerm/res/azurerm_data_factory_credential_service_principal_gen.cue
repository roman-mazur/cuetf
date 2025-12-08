package res

import "list"

#azurerm_data_factory_credential_service_principal: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_data_factory_credential_service_principal")
	close({
		// (Optional) List of string annotations.
		annotations?: [...string]

		// The resource ID of the parent Data Factory
		data_factory_id!: string

		// (Optional) Short text description
		description?: string

		// The desired name of the credential resource
		name!: string
		id?:   string

		// The Client ID of the Service Principal
		service_principal_id!: string
		service_principal_key?: matchN(1, [#service_principal_key, list.MaxItems(1) & [...#service_principal_key]])
		timeouts?: #timeouts

		// The Tenant ID of the Service Principal
		tenant_id!: string
	})

	#service_principal_key: close({
		linked_service_name!: string
		secret_name!:         string
		secret_version?:      string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
