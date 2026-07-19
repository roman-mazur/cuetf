package data

google_oracle_database_exascale_db_storage_vaults: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_oracle_database_exascale_db_storage_vaults")
	close({
		exascale_db_storage_vaults?: [...close({
			create_time?:         string
			deletion_policy?:     string
			deletion_protection?: bool
			display_name?:        string
			effective_labels?: [string]: string
			entitlement_id?:               string
			exadata_infrastructure?:       string
			exascale_db_storage_vault_id?: string
			gcp_oracle_zone?:              string
			labels?: [string]: string
			location?: string
			name?:     string
			project?:  string
			properties?: [...close({
				additional_flash_cache_percent?: number
				attached_shape_attributes?: [...string]
				available_shape_attributes?: [...string]
				exascale_db_storage_details?: [...close({
					available_size_gbs?: number
					total_size_gbs?:     number
				})]
				oci_uri?: string
				ocid?:    string
				state?:   string
				time_zone?: [...close({
					id?:      string
					version?: string
				})]
				vm_cluster_count?: number
				vm_cluster_ids?: [...string]
			})]
			terraform_labels?: [string]: string
		})]
		id?: string

		// location
		location!: string

		// The ID of the project in which the dataset is located. If it is not provided,
		// the provider project is used.
		project?: string
	})
}
