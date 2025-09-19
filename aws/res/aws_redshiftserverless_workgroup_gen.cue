package res

import "list"

#aws_redshiftserverless_workgroup: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_redshiftserverless_workgroup")
	close({
		arn?:           string
		base_capacity?: number
		endpoint?: [...close({
			address?: string
			port?:    number
			vpc_endpoint?: [...close({
				network_interface?: [...close({
					availability_zone?:    string
					network_interface_id?: string
					private_ip_address?:   string
					subnet_id?:            string
				})]
				vpc_endpoint_id?: string
				vpc_id?:          string
			})]
		})]
		enhanced_vpc_routing?: bool
		id?:                   string
		max_capacity?:         number
		namespace_name!:       string
		port?:                 number
		publicly_accessible?:  bool

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		config_parameter?: matchN(1, [#config_parameter, [...#config_parameter]])
		security_group_ids?: [...string]
		subnet_ids?: [...string]
		tags?: [string]:     string
		tags_all?: [string]: string
		track_name?:     string
		workgroup_id?:   string
		workgroup_name!: string
		price_performance_target?: matchN(1, [#price_performance_target, list.MaxItems(1) & [...#price_performance_target]])
		timeouts?: #timeouts
	})

	#config_parameter: close({
		parameter_key!:   string
		parameter_value!: string
	})

	#price_performance_target: close({
		enabled!: bool
		level?:   number
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
