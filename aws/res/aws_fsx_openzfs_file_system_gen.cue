package res

import "list"

#aws_fsx_openzfs_file_system: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_fsx_openzfs_file_system")
	close({
		arn?:                               string
		automatic_backup_retention_days?:   number
		backup_id?:                         string
		copy_tags_to_backups?:              bool
		copy_tags_to_volumes?:              bool
		daily_automatic_backup_start_time?: string
		delete_options?: [...string]
		deployment_type!:           string
		dns_name?:                  string
		endpoint_ip_address?:       string
		endpoint_ip_address_range?: string
		final_backup_tags?: [string]: string
		id?:         string
		kms_key_id?: string
		network_interface_ids?: [...string]
		owner_id?: string
		disk_iops_configuration?: matchN(1, [#disk_iops_configuration, list.MaxItems(1) & [...#disk_iops_configuration]])
		root_volume_configuration?: matchN(1, [#root_volume_configuration, list.MaxItems(1) & [...#root_volume_configuration]])
		preferred_subnet_id?: string
		region?:              string
		root_volume_id?:      string
		route_table_ids?: [...string]
		security_group_ids?: [...string]
		skip_final_backup?: bool
		timeouts?:          #timeouts
		storage_capacity?:  number
		storage_type?:      string
		subnet_ids!: [...string]
		tags?: [string]:     string
		tags_all?: [string]: string
		throughput_capacity!:           number
		vpc_id?:                        string
		weekly_maintenance_start_time?: string
	})

	#disk_iops_configuration: close({
		iops?: number
		mode?: string
	})

	#root_volume_configuration: close({
		nfs_exports?: matchN(1, [_#defs."/$defs/root_volume_configuration/$defs/nfs_exports", list.MaxItems(1) & [..._#defs."/$defs/root_volume_configuration/$defs/nfs_exports"]])
		copy_tags_to_snapshots?: bool
		data_compression_type?:  string
		read_only?:              bool
		record_size_kib?:        number
		user_and_group_quotas?: matchN(1, [_#defs."/$defs/root_volume_configuration/$defs/user_and_group_quotas", list.MaxItems(100) & [..._#defs."/$defs/root_volume_configuration/$defs/user_and_group_quotas"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/root_volume_configuration/$defs/nfs_exports": close({
		client_configurations?: matchN(1, [_#defs."/$defs/root_volume_configuration/$defs/nfs_exports/$defs/client_configurations", list.MaxItems(25) & [_, ...] & [..._#defs."/$defs/root_volume_configuration/$defs/nfs_exports/$defs/client_configurations"]])
	})

	_#defs: "/$defs/root_volume_configuration/$defs/nfs_exports/$defs/client_configurations": close({
		clients!: string
		options!: [...string]
	})

	_#defs: "/$defs/root_volume_configuration/$defs/user_and_group_quotas": close({
		id!:                         number
		storage_capacity_quota_gib!: number
		type!:                       string
	})
}
