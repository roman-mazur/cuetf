package data

#aws_fsx_windows_file_system: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_fsx_windows_file_system")
	close({
		active_directory_id?: string
		aliases?: [...string]
		arn?: string
		audit_log_configuration?: [...close({
			audit_log_destination?:             string
			file_access_audit_log_level?:       string
			file_share_access_audit_log_level?: string
		})]
		automatic_backup_retention_days?:   number
		backup_id?:                         string
		copy_tags_to_backups?:              bool
		daily_automatic_backup_start_time?: string
		deployment_type?:                   string
		disk_iops_configuration?: [...close({
			iops?: number
			mode?: string
		})]
		dns_name?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:     string
		id!:         string
		kms_key_id?: string
		network_interface_ids?: [...string]
		owner_id?:                 string
		preferred_file_server_ip?: string
		preferred_subnet_id?:      string
		security_group_ids?: [...string]
		skip_final_backup?: bool
		storage_capacity?:  number
		storage_type?:      string
		subnet_ids?: [...string]
		tags?: [string]: string
		throughput_capacity?:           number
		vpc_id?:                        string
		weekly_maintenance_start_time?: string
	})
}
