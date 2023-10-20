package res

import "list"

#aws_emr_instance_fleet: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_emr_instance_fleet")
	cluster_id:                      string
	id?:                             string
	name?:                           string
	provisioned_on_demand_capacity?: number
	provisioned_spot_capacity?:      number
	target_on_demand_capacity?:      number
	target_spot_capacity?:           number
	instance_type_configs?:          #instance_type_configs | [...#instance_type_configs]
	launch_specifications?:          #launch_specifications | list.MaxItems(1) & [...#launch_specifications]

	#instance_type_configs: {
		bid_price?:                                  string
		bid_price_as_percentage_of_on_demand_price?: number
		instance_type:                               string
		weighted_capacity?:                          number
		configurations?:                             #instance_type_configs.#configurations | [...#instance_type_configs.#configurations]
		ebs_config?:                                 #instance_type_configs.#ebs_config | [...#instance_type_configs.#ebs_config]

		#configurations: {
			classification?: string
			properties?: [string]: string
		}

		#ebs_config: {
			iops?:                 number
			size:                  number
			type:                  string
			volumes_per_instance?: number
		}
	}

	#launch_specifications: {
		on_demand_specification?: #launch_specifications.#on_demand_specification | [...#launch_specifications.#on_demand_specification]
		spot_specification?:      #launch_specifications.#spot_specification | [...#launch_specifications.#spot_specification]

		#on_demand_specification: allocation_strategy: string

		#spot_specification: {
			allocation_strategy:      string
			block_duration_minutes?:  number
			timeout_action:           string
			timeout_duration_minutes: number
		}
	}
}
