package res

#aws_ami_copy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ami_copy")
	architecture?:            string
	arn?:                     string
	boot_mode?:               string
	deprecation_time?:        string
	description?:             string
	destination_outpost_arn?: string
	ena_support?:             bool
	encrypted?:               bool
	hypervisor?:              string
	id?:                      string
	image_location?:          string
	image_owner_alias?:       string
	image_type?:              string
	imds_support?:            string
	kernel_id?:               string
	kms_key_id?:              string
	manage_ebs_snapshots?:    bool
	name!:                    string
	owner_id?:                string
	platform?:                string
	platform_details?:        string
	public?:                  bool
	ramdisk_id?:              string
	root_device_name?:        string
	root_snapshot_id?:        string
	source_ami_id!:           string
	source_ami_region!:       string
	sriov_net_support?:       string
	tags?: [string]:     string
	tags_all?: [string]: string
	tpm_support?:         string
	usage_operation?:     string
	virtualization_type?: string
	ebs_block_device?: #ebs_block_device | [...#ebs_block_device]
	ephemeral_block_device?: #ephemeral_block_device | [...#ephemeral_block_device]
	timeouts?: #timeouts

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
