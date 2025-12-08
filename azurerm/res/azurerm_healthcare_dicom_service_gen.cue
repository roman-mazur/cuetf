package res

import "list"

#azurerm_healthcare_dicom_service: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_healthcare_dicom_service")
	close({
		authentication?: [...close({
			audience?: [...string]
			authority?: string
		})]
		data_partitions_enabled?: bool
		encryption_key_url?:      string
		id?:                      string
		location!:                string
		name!:                    string
		private_endpoint?: [...close({
			id?:   string
			name?: string
		})]
		public_network_access_enabled?: bool
		cors?: matchN(1, [#cors, list.MaxItems(1) & [...#cors]])
		service_url?: string
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		tags?: [string]: string
		storage?: matchN(1, [#storage, list.MaxItems(1) & [...#storage]])
		timeouts?:     #timeouts
		workspace_id!: string
	})

	#cors: close({
		allow_credentials?: bool
		allowed_headers?: [...string]
		allowed_methods?: [...string]
		allowed_origins?: [...string]
		max_age_in_seconds?: number
	})

	#identity: close({
		identity_ids?: [...string]
		principal_id?: string
		tenant_id?:    string
		type!:         string
	})

	#storage: close({
		file_system_name!:   string
		storage_account_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
