package res

#aws_ami_from_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ami_from_instance")
	architecture?:            string
	arn?:                     string
	boot_mode?:               string
	deprecation_time?:        string
	description?:             string
	ena_support?:             bool
	hypervisor?:              string
	id?:                      string
	image_location?:          string
	image_owner_alias?:       string
	image_type?:              string
	imds_support?:            string
	kernel_id?:               string
	manage_ebs_snapshots?:    bool
	name:                     string
	owner_id?:                string
	platform?:                string
	platform_details?:        string
	public?:                  bool
	ramdisk_id?:              string
	root_device_name?:        string
	root_snapshot_id?:        string
	snapshot_without_reboot?: bool
	source_instance_id:       string
	sriov_net_support?:       string
	tags?: [string]: string
	tags_all?: [string]: string
	tpm_support?:            string
	usage_operation?:        string
	virtualization_type?:    string
	ebs_block_device?:       #ebs_block_device | [...#ebs_block_device]
	ephemeral_block_device?: #ephemeral_block_device | [...#ephemeral_block_device]
	timeouts?:               #timeouts

	#ebs_block_device: {
		delete_on_termination?: bool
		device_name?:           string
		encrypted?:             bool
		iops?:                  number
		outpost_arn?:           string
		snapshot_id?:           string
		throughput?:            number
		volume_size?:           number
		volume_type?:           string
	}

	#ephemeral_block_device: {
		device_name?:  string
		virtual_name?: string
	}

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
