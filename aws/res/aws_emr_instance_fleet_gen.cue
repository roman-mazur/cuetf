package res

import "list"

#aws_emr_instance_fleet: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_emr_instance_fleet")
	close({
		instance_type_configs?: matchN(1, [#instance_type_configs, [...#instance_type_configs]])
		cluster_id!:                     string
		id?:                             string
		name?:                           string
		provisioned_on_demand_capacity?: number
		provisioned_spot_capacity?:      number
		region?:                         string
		target_on_demand_capacity?:      number
		target_spot_capacity?:           number
		launch_specifications?: matchN(1, [#launch_specifications, list.MaxItems(1) & [...#launch_specifications]])
	})

	#instance_type_configs: close({
		configurations?: matchN(1, [_#defs."/$defs/instance_type_configs/$defs/configurations", [..._#defs."/$defs/instance_type_configs/$defs/configurations"]])
		bid_price?:                                  string
		bid_price_as_percentage_of_on_demand_price?: number
		instance_type!:                              string
		weighted_capacity?:                          number
		ebs_config?: matchN(1, [_#defs."/$defs/instance_type_configs/$defs/ebs_config", [..._#defs."/$defs/instance_type_configs/$defs/ebs_config"]])
	})

	#launch_specifications: close({
		on_demand_specification?: matchN(1, [_#defs."/$defs/launch_specifications/$defs/on_demand_specification", [..._#defs."/$defs/launch_specifications/$defs/on_demand_specification"]])
		spot_specification?: matchN(1, [_#defs."/$defs/launch_specifications/$defs/spot_specification", [..._#defs."/$defs/launch_specifications/$defs/spot_specification"]])
	})

	_#defs: "/$defs/instance_type_configs/$defs/configurations": close({
		classification?: string
		properties?: [string]: string
	})

	_#defs: "/$defs/instance_type_configs/$defs/ebs_config": close({
		iops?:                 number
		size!:                 number
		type!:                 string
		volumes_per_instance?: number
	})

	_#defs: "/$defs/launch_specifications/$defs/on_demand_specification": close({
		allocation_strategy!: string
	})

	_#defs: "/$defs/launch_specifications/$defs/spot_specification": close({
		allocation_strategy!:      string
		block_duration_minutes?:   number
		timeout_action!:           string
		timeout_duration_minutes!: number
	})
}
