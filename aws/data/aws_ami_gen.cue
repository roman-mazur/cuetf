package data

#aws_ami: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ami")
	close({
		allow_unsafe_filter?: bool
		architecture?:        string
		arn?:                 string
		block_device_mappings?: [...close({
			device_name?: string
			ebs?: [string]: string
			no_device?:    string
			virtual_name?: string
		})]
		boot_mode?:        string
		creation_date?:    string
		deprecation_time?: string
		description?:      string
		ena_support?:      bool
		executable_users?: [...string]
		hypervisor?:         string
		id?:                 string
		image_id?:           string
		image_location?:     string
		image_owner_alias?:  string
		image_type?:         string
		imds_support?:       string
		include_deprecated?: bool
		kernel_id?:          string
		last_launched_time?: string
		most_recent?:        bool
		name?:               string
		filter?: matchN(1, [#filter, [...#filter]])
		name_regex?: string
		owner_id?:   string
		owners?: [...string]
		platform?:         string
		platform_details?: string
		product_codes?: [...close({
			product_code_id?:   string
			product_code_type?: string
		})]
		public?:            bool
		ramdisk_id?:        string
		region?:            string
		root_device_name?:  string
		timeouts?:          #timeouts
		root_device_type?:  string
		root_snapshot_id?:  string
		sriov_net_support?: string
		state?:             string
		state_reason?: [string]: string
		tags?: [string]:         string
		tpm_support?:         string
		uefi_data?:           string
		usage_operation?:     string
		virtualization_type?: string
	})

	#filter: close({
		name!: string
		values!: [...string]
	})

	#timeouts: close({
		read?: string
	})
}
