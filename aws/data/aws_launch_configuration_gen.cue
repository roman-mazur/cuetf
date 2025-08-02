package data

#aws_launch_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_launch_configuration")
	close({
		arn?:                         string
		associate_public_ip_address?: bool
		ebs_block_device?: [...close({
			delete_on_termination?: bool
			device_name?:           string
			encrypted?:             bool
			iops?:                  number
			no_device?:             bool
			snapshot_id?:           string
			throughput?:            number
			volume_size?:           number
			volume_type?:           string
		})]
		ebs_optimized?:     bool
		enable_monitoring?: bool
		ephemeral_block_device?: [...close({
			device_name?:  string
			virtual_name?: string
		})]
		iam_instance_profile?: string
		id?:                   string
		image_id?:             string
		instance_type?:        string
		key_name?:             string
		metadata_options?: [...close({
			http_endpoint?:               string
			http_put_response_hop_limit?: number
			http_tokens?:                 string
		})]
		name!:              string
		placement_tenancy?: string
		region?:            string
		root_block_device?: [...close({
			delete_on_termination?: bool
			encrypted?:             bool
			iops?:                  number
			throughput?:            number
			volume_size?:           number
			volume_type?:           string
		})]
		security_groups?: [...string]
		spot_price?: string
		user_data?:  string
	})
}
