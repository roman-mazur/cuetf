package data

#azurerm_storage_account: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_storage_account")
	close({
		access_tier?:                     string
		timeouts?:                        #timeouts
		account_kind?:                    string
		account_replication_type?:        string
		account_tier?:                    string
		allow_nested_items_to_be_public?: bool
		azure_files_authentication?: [...close({
			active_directory?: [...close({
				domain_guid?:         string
				domain_name?:         string
				domain_sid?:          string
				forest_name?:         string
				netbios_domain_name?: string
				storage_sid?:         string
			})]
			default_share_level_permission?: string
			directory_type?:                 string
		})]
		custom_domain?: [...close({
			name?: string
		})]
		dns_endpoint_type?:          string
		https_traffic_only_enabled?: bool
		id?:                         string
		identity?: [...close({
			identity_ids?: [...string]
			principal_id?: string
			tenant_id?:    string
			type?:         string
		})]
		infrastructure_encryption_enabled?:  bool
		is_hns_enabled?:                     bool
		location?:                           string
		min_tls_version?:                    string
		name!:                               string
		nfsv3_enabled?:                      bool
		primary_access_key?:                 string
		primary_blob_connection_string?:     string
		primary_blob_endpoint?:              string
		primary_blob_host?:                  string
		primary_blob_internet_endpoint?:     string
		primary_blob_internet_host?:         string
		primary_blob_microsoft_endpoint?:    string
		primary_blob_microsoft_host?:        string
		primary_connection_string?:          string
		primary_dfs_endpoint?:               string
		primary_dfs_host?:                   string
		primary_dfs_internet_endpoint?:      string
		primary_dfs_internet_host?:          string
		primary_dfs_microsoft_endpoint?:     string
		primary_dfs_microsoft_host?:         string
		primary_file_endpoint?:              string
		primary_file_host?:                  string
		primary_file_internet_endpoint?:     string
		primary_file_internet_host?:         string
		primary_file_microsoft_endpoint?:    string
		primary_file_microsoft_host?:        string
		primary_location?:                   string
		primary_queue_endpoint?:             string
		primary_queue_host?:                 string
		primary_queue_microsoft_endpoint?:   string
		primary_queue_microsoft_host?:       string
		primary_table_endpoint?:             string
		primary_table_host?:                 string
		primary_table_microsoft_endpoint?:   string
		primary_table_microsoft_host?:       string
		primary_web_endpoint?:               string
		primary_web_host?:                   string
		primary_web_internet_endpoint?:      string
		primary_web_internet_host?:          string
		primary_web_microsoft_endpoint?:     string
		primary_web_microsoft_host?:         string
		queue_encryption_key_type?:          string
		resource_group_name!:                string
		secondary_access_key?:               string
		secondary_blob_connection_string?:   string
		secondary_blob_endpoint?:            string
		secondary_blob_host?:                string
		secondary_blob_internet_endpoint?:   string
		secondary_blob_internet_host?:       string
		secondary_blob_microsoft_endpoint?:  string
		secondary_blob_microsoft_host?:      string
		secondary_connection_string?:        string
		secondary_dfs_endpoint?:             string
		secondary_dfs_host?:                 string
		secondary_dfs_internet_endpoint?:    string
		secondary_dfs_internet_host?:        string
		secondary_dfs_microsoft_endpoint?:   string
		secondary_dfs_microsoft_host?:       string
		secondary_file_endpoint?:            string
		secondary_file_host?:                string
		secondary_file_internet_endpoint?:   string
		secondary_file_internet_host?:       string
		secondary_file_microsoft_endpoint?:  string
		secondary_file_microsoft_host?:      string
		secondary_location?:                 string
		secondary_queue_endpoint?:           string
		secondary_queue_host?:               string
		secondary_queue_microsoft_endpoint?: string
		secondary_queue_microsoft_host?:     string
		secondary_table_endpoint?:           string
		secondary_table_host?:               string
		secondary_table_microsoft_endpoint?: string
		secondary_table_microsoft_host?:     string
		secondary_web_endpoint?:             string
		secondary_web_host?:                 string
		secondary_web_internet_endpoint?:    string
		secondary_web_internet_host?:        string
		secondary_web_microsoft_endpoint?:   string
		secondary_web_microsoft_host?:       string
		table_encryption_key_type?:          string
		tags?: [string]: string
	})

	#timeouts: close({
		read?: string
	})
}
