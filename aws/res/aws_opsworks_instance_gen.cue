package res

#aws_opsworks_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_opsworks_instance")
	agent_version?:           string
	ami_id?:                  string
	architecture?:            string
	auto_scaling_type?:       string
	availability_zone?:       string
	created_at?:              string
	delete_ebs?:              bool
	delete_eip?:              bool
	ebs_optimized?:           bool
	ec2_instance_id?:         string
	ecs_cluster_arn?:         string
	elastic_ip?:              string
	hostname?:                string
	id?:                      string
	infrastructure_class?:    string
	install_updates_on_boot?: bool
	instance_profile_arn?:    string
	instance_type?:           string
	last_service_error_id?:   string
	layer_ids!: [...string]
	os?:                     string
	platform?:               string
	private_dns?:            string
	private_ip?:             string
	public_dns?:             string
	public_ip?:              string
	registered_by?:          string
	reported_agent_version?: string
	reported_os_family?:     string
	reported_os_name?:       string
	reported_os_version?:    string
	root_device_type?:       string
	root_device_volume_id?:  string
	security_group_ids?: [...string]
	ssh_host_dsa_key_fingerprint?: string
	ssh_host_rsa_key_fingerprint?: string
	ssh_key_name?:                 string
	stack_id!:                     string
	state?:                        string
	status?:                       string
	subnet_id?:                    string
	tenancy?:                      string
	virtualization_type?:          string
	ebs_block_device?: #ebs_block_device | [...#ebs_block_device]
	ephemeral_block_device?: #ephemeral_block_device | [...#ephemeral_block_device]
	root_block_device?: #root_block_device | [...#root_block_device]
	timeouts?: #timeouts

	#ebs_block_device: {
		delete_on_termination?: bool
		device_name!:           string
		iops?:                  number
		snapshot_id?:           string
		volume_size?:           number
		volume_type?:           string
	}

	#ephemeral_block_device: {
		device_name!:  string
		virtual_name!: string
	}

	#root_block_device: {
		delete_on_termination?: bool
		iops?:                  number
		volume_size?:           number
		volume_type?:           string
	}

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
