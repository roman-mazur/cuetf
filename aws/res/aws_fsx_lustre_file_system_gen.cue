package res

import "list"

#aws_fsx_lustre_file_system: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_fsx_lustre_file_system")
	arn?:                               string
	auto_import_policy?:                string
	automatic_backup_retention_days?:   number
	backup_id?:                         string
	copy_tags_to_backups?:              bool
	daily_automatic_backup_start_time?: string
	data_compression_type?:             string
	deployment_type?:                   string
	dns_name?:                          string
	drive_cache_type?:                  string
	export_path?:                       string
	file_system_type_version?:          string
	id?:                                string
	import_path?:                       string
	imported_file_chunk_size?:          number
	kms_key_id?:                        string
	mount_name?:                        string
	network_interface_ids?: [...string]
	owner_id?:                    string
	per_unit_storage_throughput?: number
	security_group_ids?: [...string]
	storage_capacity?: number
	storage_type?:     string
	subnet_ids: [...string]
	tags?: [string]: string
	tags_all?: [string]: string
	vpc_id?:                        string
	weekly_maintenance_start_time?: string
	log_configuration?:             #log_configuration | list.MaxItems(1) & [...#log_configuration]
	root_squash_configuration?:     #root_squash_configuration | list.MaxItems(1) & [...#root_squash_configuration]
	timeouts?:                      #timeouts

	#log_configuration: {
		destination?: string
		level?:       string
	}

	#root_squash_configuration: {
		no_squash_nids?: [...string]
		root_squash?: string
	}

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
