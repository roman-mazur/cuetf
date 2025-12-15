package res

import "list"

#aws_fsx_lustre_file_system: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_fsx_lustre_file_system")
	close({
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
		efa_enabled?:                       bool
		export_path?:                       string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                   string
		file_system_type_version?: string
		final_backup_tags?: [string]: string
		id?:                       string
		import_path?:              string
		imported_file_chunk_size?: number
		kms_key_id?:               string
		data_read_cache_configuration?: matchN(1, [#data_read_cache_configuration, list.MaxItems(1) & [...#data_read_cache_configuration]])
		mount_name?: string
		network_interface_ids?: [...string]
		log_configuration?: matchN(1, [#log_configuration, list.MaxItems(1) & [...#log_configuration]])
		owner_id?:                    string
		per_unit_storage_throughput?: number
		security_group_ids?: [...string]
		metadata_configuration?: matchN(1, [#metadata_configuration, list.MaxItems(1) & [...#metadata_configuration]])
		skip_final_backup?: bool
		storage_capacity?:  number
		storage_type?:      string
		subnet_ids!: [...string]
		tags?: [string]:     string
		tags_all?: [string]: string
		throughput_capacity?: number
		vpc_id?:              string
		root_squash_configuration?: matchN(1, [#root_squash_configuration, list.MaxItems(1) & [...#root_squash_configuration]])
		timeouts?:                      #timeouts
		weekly_maintenance_start_time?: string
	})

	#data_read_cache_configuration: close({
		size?:        number
		sizing_mode!: string
	})

	#log_configuration: close({
		destination?: string
		level?:       string
	})

	#metadata_configuration: close({
		iops?: number
		mode?: string
	})

	#root_squash_configuration: close({
		no_squash_nids?: [...string]
		root_squash?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
