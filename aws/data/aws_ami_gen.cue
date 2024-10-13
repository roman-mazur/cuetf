package data

#aws_ami: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ami")
	architecture?: string
	arn?:          string
	block_device_mappings?: [...{
		device_name?: string
		ebs?: [string]: string
		no_device?:    string
		virtual_name?: string
	}]
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
	most_recent?:        bool
	name?:               string
	name_regex?:         string
	owner_id?:           string
	owners?: [...string]
	platform?:         string
	platform_details?: string
	product_codes?: [...{
		product_code_id?:   string
		product_code_type?: string
	}]
	public?:            bool
	ramdisk_id?:        string
	root_device_name?:  string
	root_device_type?:  string
	root_snapshot_id?:  string
	sriov_net_support?: string
	state?:             string
	state_reason?: [string]: string
	tags?: [string]: string
	tpm_support?:         string
	usage_operation?:     string
	virtualization_type?: string
	filter?: #filter | [...#filter]
	timeouts?: #timeouts

	#filter: {
		name!: string
		values!: [...string]
	}

	#timeouts: read?: string
}
