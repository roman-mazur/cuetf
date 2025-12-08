package data

#azurerm_oracle_exascale_database_storage_vault: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_oracle_exascale_database_storage_vault")
	close({
		additional_flash_cache_percentage?: number
		description?:                       string
		display_name?:                      string
		high_capacity_database_storage?: [...close({
			available_size_in_gb?: number
			total_size_in_gb?:     number
		})]
		id?:                            string
		lifecycle_details?:             string
		lifecycle_state?:               string
		location?:                      string
		name!:                          string
		oci_url?:                       string
		ocid?:                          string
		resource_group_name!:           string
		timeouts?:                      #timeouts
		time_zone?:                     string
		virtual_machine_cluster_count?: number
		zones?: [...string]
	})

	#timeouts: close({
		read?: string
	})
}
