package data

#azurerm_healthcare_dicom_service: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_healthcare_dicom_service")
	close({
		authentication?: [...close({
			audience?: [...string]
			authority?: string
		})]
		cors?: [...close({
			allow_credentials?: bool
			allowed_headers?: [...string]
			allowed_methods?: [...string]
			allowed_origins?: [...string]
			max_age_in_seconds?: number
		})]
		data_partitions_enabled?: bool
		encryption_key_url?:      string
		id?:                      string
		identity?: [...close({
			identity_ids?: [...string]
			principal_id?: string
			tenant_id?:    string
			type?:         string
		})]
		location?: string
		name!:     string
		timeouts?: #timeouts
		private_endpoint?: [...close({
			id?:   string
			name?: string
		})]
		service_url?: string
		storage?: [...close({
			file_system_name?:   string
			storage_account_id?: string
		})]
		tags?: [string]: string
		workspace_id!: string
	})

	#timeouts: close({
		read?: string
	})
}
