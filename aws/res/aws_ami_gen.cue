package res

#aws_ami: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ami")
	close({
		architecture?:      string
		arn?:               string
		boot_mode?:         string
		deprecation_time?:  string
		description?:       string
		ena_support?:       bool
		hypervisor?:        string
		id?:                string
		image_location?:    string
		image_owner_alias?: string
		image_type?:        string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:               string
		imds_support?:         string
		kernel_id?:            string
		last_launched_time?:   string
		manage_ebs_snapshots?: bool
		name!:                 string
		owner_id?:             string
		platform?:             string
		ebs_block_device?: matchN(1, [#ebs_block_device, [...#ebs_block_device]])
		platform_details?:  string
		public?:            bool
		ramdisk_id?:        string
		root_device_name?:  string
		root_snapshot_id?:  string
		sriov_net_support?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		tpm_support?:         string
		uefi_data?:           string
		usage_operation?:     string
		virtualization_type?: string
		ephemeral_block_device?: matchN(1, [#ephemeral_block_device, [...#ephemeral_block_device]])
		timeouts?: #timeouts
	})

	#ebs_block_device: close({
		delete_on_termination?: bool
		device_name!:           string
		encrypted?:             bool
		iops?:                  number
		outpost_arn?:           string
		snapshot_id?:           string
		throughput?:            number
		volume_size?:           number
		volume_type?:           string
	})

	#ephemeral_block_device: close({
		device_name!:  string
		virtual_name!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
