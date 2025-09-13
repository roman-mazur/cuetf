package res

import "list"

#aws_fsx_windows_file_system: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_fsx_windows_file_system")
	close({
		active_directory_id?: string
		aliases?: [...string]
		arn?:                               string
		automatic_backup_retention_days?:   number
		backup_id?:                         string
		copy_tags_to_backups?:              bool
		daily_automatic_backup_start_time?: string
		deployment_type?:                   string
		dns_name?:                          string
		final_backup_tags?: [string]: string
		id?:         string
		kms_key_id?: string
		network_interface_ids?: [...string]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                         string
		owner_id?:                       string
		preferred_file_server_ip?:       string
		preferred_subnet_id?:            string
		remote_administration_endpoint?: string
		security_group_ids?: [...string]
		skip_final_backup?: bool
		storage_capacity?:  number
		storage_type?:      string
		audit_log_configuration?: matchN(1, [#audit_log_configuration, list.MaxItems(1) & [...#audit_log_configuration]])
		subnet_ids!: [...string]
		tags?: [string]:     string
		tags_all?: [string]: string
		throughput_capacity!: number
		vpc_id?:              string
		disk_iops_configuration?: matchN(1, [#disk_iops_configuration, list.MaxItems(1) & [...#disk_iops_configuration]])
		self_managed_active_directory?: matchN(1, [#self_managed_active_directory, list.MaxItems(1) & [...#self_managed_active_directory]])
		timeouts?:                      #timeouts
		weekly_maintenance_start_time?: string
	})

	#audit_log_configuration: close({
		audit_log_destination?:             string
		file_access_audit_log_level?:       string
		file_share_access_audit_log_level?: string
	})

	#disk_iops_configuration: close({
		iops?: number
		mode?: string
	})

	#self_managed_active_directory: close({
		dns_ips!: [...string]
		domain_name!:                            string
		file_system_administrators_group?:       string
		organizational_unit_distinguished_name?: string
		password!:                               string
		username!:                               string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
