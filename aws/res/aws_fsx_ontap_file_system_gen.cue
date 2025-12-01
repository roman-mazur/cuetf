package res

import "list"

#aws_fsx_ontap_file_system: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_fsx_ontap_file_system")
	close({
		arn?:                               string
		automatic_backup_retention_days?:   number
		daily_automatic_backup_start_time?: string
		deployment_type!:                   string
		dns_name?:                          string
		endpoint_ip_address_range?:         string
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
		fsx_admin_password?: string
		ha_pairs?:           number
		id?:                 string
		kms_key_id?:         string
		network_interface_ids?: [...string]
		owner_id?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		disk_iops_configuration?: matchN(1, [#disk_iops_configuration, list.MaxItems(1) & [...#disk_iops_configuration]])
		timeouts?:            #timeouts
		preferred_subnet_id!: string
		route_table_ids?: [...string]
		security_group_ids?: [...string]
		storage_capacity!: number
		storage_type?:     string
		subnet_ids!: [...string]
		tags?: [string]:     string
		tags_all?: [string]: string
		throughput_capacity?:             number
		throughput_capacity_per_ha_pair?: number
		vpc_id?:                          string
		weekly_maintenance_start_time?:   string
	})

	#disk_iops_configuration: close({
		iops?: number
		mode?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
