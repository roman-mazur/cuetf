package res

import "list"

#azurerm_storage_account: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_storage_account")
	close({
		access_tier?:                       string
		account_kind?:                      string
		account_replication_type!:          string
		account_tier!:                      string
		allow_nested_items_to_be_public?:   bool
		allowed_copy_scope?:                string
		cross_tenant_replication_enabled?:  bool
		default_to_oauth_authentication?:   bool
		dns_endpoint_type?:                 string
		edge_zone?:                         string
		https_traffic_only_enabled?:        bool
		id?:                                string
		infrastructure_encryption_enabled?: bool
		is_hns_enabled?:                    bool
		large_file_share_enabled?:          bool
		local_user_enabled?:                bool
		location!:                          string
		min_tls_version?:                   string
		name!:                              string
		nfsv3_enabled?:                     bool
		primary_access_key?:                string
		primary_blob_connection_string?:    string
		primary_blob_endpoint?:             string
		azure_files_authentication?: matchN(1, [#azure_files_authentication, list.MaxItems(1) & [...#azure_files_authentication]])
		primary_blob_host?:                string
		primary_blob_internet_endpoint?:   string
		primary_blob_internet_host?:       string
		primary_blob_microsoft_endpoint?:  string
		primary_blob_microsoft_host?:      string
		primary_connection_string?:        string
		primary_dfs_endpoint?:             string
		primary_dfs_host?:                 string
		primary_dfs_internet_endpoint?:    string
		primary_dfs_internet_host?:        string
		primary_dfs_microsoft_endpoint?:   string
		primary_dfs_microsoft_host?:       string
		primary_file_endpoint?:            string
		primary_file_host?:                string
		primary_file_internet_endpoint?:   string
		primary_file_internet_host?:       string
		primary_file_microsoft_endpoint?:  string
		primary_file_microsoft_host?:      string
		primary_location?:                 string
		primary_queue_endpoint?:           string
		primary_queue_host?:               string
		primary_queue_microsoft_endpoint?: string
		primary_queue_microsoft_host?:     string
		primary_table_endpoint?:           string
		primary_table_host?:               string
		primary_table_microsoft_endpoint?: string
		primary_table_microsoft_host?:     string
		primary_web_endpoint?:             string
		primary_web_host?:                 string
		primary_web_internet_endpoint?:    string
		blob_properties?: matchN(1, [#blob_properties, list.MaxItems(1) & [...#blob_properties]])
		primary_web_internet_host?:      string
		primary_web_microsoft_endpoint?: string
		custom_domain?: matchN(1, [#custom_domain, list.MaxItems(1) & [...#custom_domain]])
		customer_managed_key?: matchN(1, [#customer_managed_key, list.MaxItems(1) & [...#customer_managed_key]])
		primary_web_microsoft_host?:        string
		provisioned_billing_model_version?: string
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		public_network_access_enabled?:    bool
		queue_encryption_key_type?:        string
		resource_group_name!:              string
		secondary_access_key?:             string
		secondary_blob_connection_string?: string
		secondary_blob_endpoint?:          string
		secondary_blob_host?:              string
		secondary_blob_internet_endpoint?: string
		secondary_blob_internet_host?:     string
		immutability_policy?: matchN(1, [#immutability_policy, list.MaxItems(1) & [...#immutability_policy]])
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
		sftp_enabled?:                       bool
		network_rules?: matchN(1, [#network_rules, list.MaxItems(1) & [...#network_rules]])
		queue_properties?: matchN(1, [#queue_properties, list.MaxItems(1) & [...#queue_properties]])
		routing?: matchN(1, [#routing, list.MaxItems(1) & [...#routing]])
		shared_access_key_enabled?: bool
		table_encryption_key_type?: string
		tags?: [string]: string
		sas_policy?: matchN(1, [#sas_policy, list.MaxItems(1) & [...#sas_policy]])
		share_properties?: matchN(1, [#share_properties, list.MaxItems(1) & [...#share_properties]])
		static_website?: matchN(1, [#static_website, list.MaxItems(1) & [...#static_website]])
		timeouts?: #timeouts
	})

	#azure_files_authentication: close({
		active_directory?: matchN(1, [_#defs."/$defs/azure_files_authentication/$defs/active_directory", list.MaxItems(1) & [..._#defs."/$defs/azure_files_authentication/$defs/active_directory"]])
		default_share_level_permission?: string
		directory_type!:                 string
	})

	#blob_properties: close({
		change_feed_enabled?:           bool
		change_feed_retention_in_days?: number
		default_service_version?:       string
		last_access_time_enabled?:      bool
		versioning_enabled?:            bool
		container_delete_retention_policy?: matchN(1, [_#defs."/$defs/blob_properties/$defs/container_delete_retention_policy", list.MaxItems(1) & [..._#defs."/$defs/blob_properties/$defs/container_delete_retention_policy"]])
		cors_rule?: matchN(1, [_#defs."/$defs/blob_properties/$defs/cors_rule", list.MaxItems(5) & [..._#defs."/$defs/blob_properties/$defs/cors_rule"]])
		delete_retention_policy?: matchN(1, [_#defs."/$defs/blob_properties/$defs/delete_retention_policy", list.MaxItems(1) & [..._#defs."/$defs/blob_properties/$defs/delete_retention_policy"]])
		restore_policy?: matchN(1, [_#defs."/$defs/blob_properties/$defs/restore_policy", list.MaxItems(1) & [..._#defs."/$defs/blob_properties/$defs/restore_policy"]])
	})

	#custom_domain: close({
		name!:          string
		use_subdomain?: bool
	})

	#customer_managed_key: close({
		key_vault_key_id?:          string
		managed_hsm_key_id?:        string
		user_assigned_identity_id!: string
	})

	#identity: close({
		identity_ids?: [...string]
		principal_id?: string
		tenant_id?:    string
		type!:         string
	})

	#immutability_policy: close({
		allow_protected_append_writes!: bool
		period_since_creation_in_days!: number
		state!:                         string
	})

	#network_rules: close({
		private_link_access?: matchN(1, [_#defs."/$defs/network_rules/$defs/private_link_access", [..._#defs."/$defs/network_rules/$defs/private_link_access"]])
		bypass?: [...string]
		default_action!: string
		ip_rules?: [...string]
		virtual_network_subnet_ids?: [...string]
	})

	#queue_properties: close({
		cors_rule?: matchN(1, [_#defs."/$defs/queue_properties/$defs/cors_rule", list.MaxItems(5) & [..._#defs."/$defs/queue_properties/$defs/cors_rule"]])
		hour_metrics?: matchN(1, [_#defs."/$defs/queue_properties/$defs/hour_metrics", list.MaxItems(1) & [..._#defs."/$defs/queue_properties/$defs/hour_metrics"]])
		logging?: matchN(1, [_#defs."/$defs/queue_properties/$defs/logging", list.MaxItems(1) & [..._#defs."/$defs/queue_properties/$defs/logging"]])
		minute_metrics?: matchN(1, [_#defs."/$defs/queue_properties/$defs/minute_metrics", list.MaxItems(1) & [..._#defs."/$defs/queue_properties/$defs/minute_metrics"]])
	})

	#routing: close({
		choice?:                      string
		publish_internet_endpoints?:  bool
		publish_microsoft_endpoints?: bool
	})

	#sas_policy: close({
		expiration_action?: string
		expiration_period!: string
	})

	#share_properties: close({
		cors_rule?: matchN(1, [_#defs."/$defs/share_properties/$defs/cors_rule", list.MaxItems(5) & [..._#defs."/$defs/share_properties/$defs/cors_rule"]])
		retention_policy?: matchN(1, [_#defs."/$defs/share_properties/$defs/retention_policy", list.MaxItems(1) & [..._#defs."/$defs/share_properties/$defs/retention_policy"]])
		smb?: matchN(1, [_#defs."/$defs/share_properties/$defs/smb", list.MaxItems(1) & [..._#defs."/$defs/share_properties/$defs/smb"]])
	})

	#static_website: close({
		error_404_document?: string
		index_document?:     string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/azure_files_authentication/$defs/active_directory": close({
		domain_guid!:         string
		domain_name!:         string
		domain_sid?:          string
		forest_name?:         string
		netbios_domain_name?: string
		storage_sid?:         string
	})

	_#defs: "/$defs/blob_properties/$defs/container_delete_retention_policy": close({
		days?: number
	})

	_#defs: "/$defs/blob_properties/$defs/cors_rule": close({
		allowed_headers!: [...string]
		allowed_methods!: [...string]
		allowed_origins!: [...string]
		exposed_headers!: [...string]
		max_age_in_seconds!: number
	})

	_#defs: "/$defs/blob_properties/$defs/delete_retention_policy": close({
		days?:                     number
		permanent_delete_enabled?: bool
	})

	_#defs: "/$defs/blob_properties/$defs/restore_policy": close({
		days!: number
	})

	_#defs: "/$defs/network_rules/$defs/private_link_access": close({
		endpoint_resource_id!: string
		endpoint_tenant_id?:   string
	})

	_#defs: "/$defs/queue_properties/$defs/cors_rule": close({
		allowed_headers!: [...string]
		allowed_methods!: [...string]
		allowed_origins!: [...string]
		exposed_headers!: [...string]
		max_age_in_seconds!: number
	})

	_#defs: "/$defs/queue_properties/$defs/hour_metrics": close({
		enabled!:               bool
		include_apis?:          bool
		retention_policy_days?: number
		version!:               string
	})

	_#defs: "/$defs/queue_properties/$defs/logging": close({
		delete!:                bool
		read!:                  bool
		retention_policy_days?: number
		version!:               string
		write!:                 bool
	})

	_#defs: "/$defs/queue_properties/$defs/minute_metrics": close({
		enabled!:               bool
		include_apis?:          bool
		retention_policy_days?: number
		version!:               string
	})

	_#defs: "/$defs/share_properties/$defs/cors_rule": close({
		allowed_headers!: [...string]
		allowed_methods!: [...string]
		allowed_origins!: [...string]
		exposed_headers!: [...string]
		max_age_in_seconds!: number
	})

	_#defs: "/$defs/share_properties/$defs/retention_policy": close({
		days?: number
	})

	_#defs: "/$defs/share_properties/$defs/smb": close({
		authentication_types?: [...string]
		channel_encryption_type?: [...string]
		kerberos_ticket_encryption_type?: [...string]
		multichannel_enabled?: bool
		versions?: [...string]
	})
}
