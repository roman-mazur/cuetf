package data

#aws_fsx_ontap_file_system: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_fsx_ontap_file_system")
	close({
		arn?:                               string
		automatic_backup_retention_days?:   number
		daily_automatic_backup_start_time?: string
		deployment_type?:                   string
		disk_iops_configuration?: [...close({
			iops?: number
			mode?: string
		})]
		dns_name?:                  string
		endpoint_ip_address_range?: string
		endpoints?: [...close({
			intercluster?: [...close({
				dns_name?: string
				ip_addresses?: [...string]
			})]
			management?: [...close({
				dns_name?: string
				ip_addresses?: [...string]
			})]
		})]
		ha_pairs?:   number
		id!:         string
		kms_key_id?: string
		network_interface_ids?: [...string]
		owner_id?:            string
		preferred_subnet_id?: string
		region?:              string
		route_table_ids?: [...string]
		storage_capacity?: number
		storage_type?:     string
		subnet_ids?: [...string]
		tags?: [string]: string
		throughput_capacity?:             number
		throughput_capacity_per_ha_pair?: number
		vpc_id?:                          string
		weekly_maintenance_start_time?:   string
	})
}
