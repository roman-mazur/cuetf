package res

import "list"

#aws_launch_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_launch_configuration")
	arn?:                         string
	associate_public_ip_address?: bool
	ebs_optimized?:               bool
	enable_monitoring?:           bool
	iam_instance_profile?:        string
	id?:                          string
	image_id:                     string
	instance_type:                string
	key_name?:                    string
	name?:                        string
	name_prefix?:                 string
	placement_tenancy?:           string
	security_groups?: [...string]
	spot_price?:             string
	user_data?:              string
	user_data_base64?:       string
	ebs_block_device?:       #ebs_block_device | [...#ebs_block_device]
	ephemeral_block_device?: #ephemeral_block_device | [...#ephemeral_block_device]
	metadata_options?:       #metadata_options | list.MaxItems(1) & [...#metadata_options]
	root_block_device?:      #root_block_device | list.MaxItems(1) & [...#root_block_device]

	#ebs_block_device: {
		delete_on_termination?: bool
		device_name:            string
		encrypted?:             bool
		iops?:                  number
		no_device?:             bool
		snapshot_id?:           string
		throughput?:            number
		volume_size?:           number
		volume_type?:           string
	}

	#ephemeral_block_device: {
		device_name:   string
		no_device?:    bool
		virtual_name?: string
	}

	#metadata_options: {
		http_endpoint?:               string
		http_put_response_hop_limit?: number
		http_tokens?:                 string
	}

	#root_block_device: {
		delete_on_termination?: bool
		encrypted?:             bool
		iops?:                  number
		throughput?:            number
		volume_size?:           number
		volume_type?:           string
	}
}
