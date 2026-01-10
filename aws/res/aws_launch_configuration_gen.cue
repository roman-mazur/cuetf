package res

import "list"

#aws_launch_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_launch_configuration")
	close({
		arn?:                         string
		associate_public_ip_address?: bool
		ebs_block_device?: matchN(1, [#ebs_block_device, [...#ebs_block_device]])
		ebs_optimized?:        bool
		enable_monitoring?:    bool
		iam_instance_profile?: string
		id?:                   string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:        string
		image_id!:      string
		instance_type!: string
		key_name?:      string
		name?:          string
		name_prefix?:   string
		ephemeral_block_device?: matchN(1, [#ephemeral_block_device, [...#ephemeral_block_device]])
		placement_tenancy?: string
		security_groups?: [...string]
		spot_price?:       string
		user_data?:        string
		user_data_base64?: string
		metadata_options?: matchN(1, [#metadata_options, list.MaxItems(1) & [...#metadata_options]])
		root_block_device?: matchN(1, [#root_block_device, list.MaxItems(1) & [...#root_block_device]])
	})

	#ebs_block_device: close({
		delete_on_termination?: bool
		device_name!:           string
		encrypted?:             bool
		iops?:                  number
		no_device?:             bool
		snapshot_id?:           string
		throughput?:            number
		volume_size?:           number
		volume_type?:           string
	})

	#ephemeral_block_device: close({
		device_name!:  string
		no_device?:    bool
		virtual_name?: string
	})

	#metadata_options: close({
		http_endpoint?:               string
		http_put_response_hop_limit?: number
		http_tokens?:                 string
	})

	#root_block_device: close({
		delete_on_termination?: bool
		encrypted?:             bool
		iops?:                  number
		throughput?:            number
		volume_size?:           number
		volume_type?:           string
	})
}
