package data

#aws_fsx_windows_file_system: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_fsx_windows_file_system")
	active_directory_id?: string
	aliases?: [...string]
	arn?: string
	audit_log_configuration?: [...{
		audit_log_destination?:             string
		file_access_audit_log_level?:       string
		file_share_access_audit_log_level?: string
	}]
	automatic_backup_retention_days?:   number
	backup_id?:                         string
	copy_tags_to_backups?:              bool
	daily_automatic_backup_start_time?: string
	deployment_type?:                   string
	disk_iops_configuration?: [...{
		iops?: number
		mode?: string
	}]
	dns_name?:   string
	id:          string
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
}
