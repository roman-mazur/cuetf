package res

import "list"

#azurerm_hdinsight_hbase_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_hdinsight_hbase_cluster")
	close({
		cluster_version!: string
		https_endpoint?:  string
		id?:              string
		location!:        string
		name!:            string
		component_version!: matchN(1, [#component_version, list.MaxItems(1) & [_, ...] & [...#component_version]])
		resource_group_name!: string
		ssh_endpoint?:        string
		tags?: [string]: string
		tier!:            string
		tls_min_version?: string
		compute_isolation?: matchN(1, [#compute_isolation, list.MaxItems(1) & [...#compute_isolation]])
		disk_encryption?: matchN(1, [#disk_encryption, [...#disk_encryption]])
		extension?: matchN(1, [#extension, list.MaxItems(1) & [...#extension]])
		gateway!: matchN(1, [#gateway, list.MaxItems(1) & [_, ...] & [...#gateway]])
		metastores?: matchN(1, [#metastores, list.MaxItems(1) & [...#metastores]])
		monitor?: matchN(1, [#monitor, list.MaxItems(1) & [...#monitor]])
		network?: matchN(1, [#network, list.MaxItems(1) & [...#network]])
		private_link_configuration?: matchN(1, [#private_link_configuration, list.MaxItems(1) & [...#private_link_configuration]])
		roles!: matchN(1, [#roles, list.MaxItems(1) & [_, ...] & [...#roles]])
		security_profile?: matchN(1, [#security_profile, list.MaxItems(1) & [...#security_profile]])
		storage_account?: matchN(1, [#storage_account, [...#storage_account]])
		storage_account_gen2?: matchN(1, [#storage_account_gen2, list.MaxItems(1) & [...#storage_account_gen2]])
		timeouts?: #timeouts
	})

	#component_version: close({
		hbase!: string
	})

	#compute_isolation: close({
		compute_isolation_enabled?: bool
		host_sku?:                  string
	})

	#disk_encryption: close({
		encryption_algorithm?:          string
		encryption_at_host_enabled?:    bool
		key_vault_key_id?:              string
		key_vault_managed_identity_id?: string
	})

	#extension: close({
		log_analytics_workspace_id!: string
		primary_key!:                string
	})

	#gateway: close({
		password!: string
		username!: string
	})

	#metastores: close({
		ambari?: matchN(1, [_#defs."/$defs/metastores/$defs/ambari", list.MaxItems(1) & [..._#defs."/$defs/metastores/$defs/ambari"]])
		hive?: matchN(1, [_#defs."/$defs/metastores/$defs/hive", list.MaxItems(1) & [..._#defs."/$defs/metastores/$defs/hive"]])
		oozie?: matchN(1, [_#defs."/$defs/metastores/$defs/oozie", list.MaxItems(1) & [..._#defs."/$defs/metastores/$defs/oozie"]])
	})

	#monitor: close({
		log_analytics_workspace_id!: string
		primary_key!:                string
	})

	#network: close({
		connection_direction?: string
		private_link_enabled?: bool
	})

	#private_link_configuration: close({
		ip_configuration!: matchN(1, [_#defs."/$defs/private_link_configuration/$defs/ip_configuration", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/private_link_configuration/$defs/ip_configuration"]])
		group_id!: string
		name!:     string
	})

	#roles: close({
		head_node!: matchN(1, [_#defs."/$defs/roles/$defs/head_node", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/roles/$defs/head_node"]])
		worker_node!: matchN(1, [_#defs."/$defs/roles/$defs/worker_node", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/roles/$defs/worker_node"]])
		zookeeper_node!: matchN(1, [_#defs."/$defs/roles/$defs/zookeeper_node", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/roles/$defs/zookeeper_node"]])
	})

	#security_profile: close({
		aadds_resource_id!: string
		cluster_users_group_dns?: [...string]
		domain_name!:          string
		domain_user_password!: string
		domain_username!:      string
		ldaps_urls!: [...string]
		msi_resource_id!: string
	})

	#storage_account: close({
		is_default!:           bool
		storage_account_key!:  string
		storage_container_id!: string
		storage_resource_id?:  string
	})

	#storage_account_gen2: close({
		filesystem_id!:                string
		is_default!:                   bool
		managed_identity_resource_id!: string
		storage_resource_id!:          string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/metastores/$defs/ambari": close({
		database_name!: string
		password!:      string
		server!:        string
		username!:      string
	})

	_#defs: "/$defs/metastores/$defs/hive": close({
		database_name!: string
		password!:      string
		server!:        string
		username!:      string
	})

	_#defs: "/$defs/metastores/$defs/oozie": close({
		database_name!: string
		password!:      string
		server!:        string
		username!:      string
	})

	_#defs: "/$defs/private_link_configuration/$defs/ip_configuration": close({
		name!:                         string
		primary?:                      bool
		private_ip_address?:           string
		private_ip_allocation_method?: string
		subnet_id?:                    string
	})

	_#defs: "/$defs/roles/$defs/head_node": close({
		script_actions?: matchN(1, [_#defs."/$defs/roles/$defs/head_node/$defs/script_actions", [..._#defs."/$defs/roles/$defs/head_node/$defs/script_actions"]])
		password?: string
		ssh_keys?: [...string]
		subnet_id?:          string
		username!:           string
		virtual_network_id?: string
		vm_size!:            string
	})

	_#defs: "/$defs/roles/$defs/head_node/$defs/script_actions": close({
		name!:       string
		parameters?: string
		uri!:        string
	})

	_#defs: "/$defs/roles/$defs/worker_node": close({
		autoscale?: matchN(1, [_#defs."/$defs/roles/$defs/worker_node/$defs/autoscale", list.MaxItems(1) & [..._#defs."/$defs/roles/$defs/worker_node/$defs/autoscale"]])
		password?: string
		ssh_keys?: [...string]
		subnet_id?:             string
		target_instance_count!: number
		username!:              string
		virtual_network_id?:    string
		vm_size!:               string
		script_actions?: matchN(1, [_#defs."/$defs/roles/$defs/worker_node/$defs/script_actions", [..._#defs."/$defs/roles/$defs/worker_node/$defs/script_actions"]])
	})

	_#defs: "/$defs/roles/$defs/worker_node/$defs/autoscale": close({
		recurrence?: matchN(1, [_#defs."/$defs/roles/$defs/worker_node/$defs/autoscale/$defs/recurrence", list.MaxItems(1) & [..._#defs."/$defs/roles/$defs/worker_node/$defs/autoscale/$defs/recurrence"]])
	})

	_#defs: "/$defs/roles/$defs/worker_node/$defs/autoscale/$defs/recurrence": close({
		schedule!: matchN(1, [_#defs."/$defs/roles/$defs/worker_node/$defs/autoscale/$defs/recurrence/$defs/schedule", [_, ...] & [..._#defs."/$defs/roles/$defs/worker_node/$defs/autoscale/$defs/recurrence/$defs/schedule"]])
		timezone!: string
	})

	_#defs: "/$defs/roles/$defs/worker_node/$defs/autoscale/$defs/recurrence/$defs/schedule": close({
		days!: [...string]
		target_instance_count!: number
		time!:                  string
	})

	_#defs: "/$defs/roles/$defs/worker_node/$defs/script_actions": close({
		name!:       string
		parameters?: string
		uri!:        string
	})

	_#defs: "/$defs/roles/$defs/zookeeper_node": close({
		script_actions?: matchN(1, [_#defs."/$defs/roles/$defs/zookeeper_node/$defs/script_actions", [..._#defs."/$defs/roles/$defs/zookeeper_node/$defs/script_actions"]])
		password?: string
		ssh_keys?: [...string]
		subnet_id?:          string
		username!:           string
		virtual_network_id?: string
		vm_size!:            string
	})

	_#defs: "/$defs/roles/$defs/zookeeper_node/$defs/script_actions": close({
		name!:       string
		parameters?: string
		uri!:        string
	})
}
