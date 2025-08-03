package res

import "list"

#aws_codedeploy_deployment_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_codedeploy_deployment_config")
	close({
		arn?:              string
		compute_platform?: string
		minimum_healthy_hosts?: matchN(1, [#minimum_healthy_hosts, list.MaxItems(1) & [...#minimum_healthy_hosts]])
		traffic_routing_config?: matchN(1, [#traffic_routing_config, list.MaxItems(1) & [...#traffic_routing_config]])
		zonal_config?: matchN(1, [#zonal_config, list.MaxItems(1) & [...#zonal_config]])
		deployment_config_id?:   string
		deployment_config_name!: string
		id?:                     string
		region?:                 string
	})

	#minimum_healthy_hosts: close({
		type?:  string
		value?: number
	})

	#traffic_routing_config: close({
		type?: string
		time_based_canary?: matchN(1, [_#defs."/$defs/traffic_routing_config/$defs/time_based_canary", list.MaxItems(1) & [..._#defs."/$defs/traffic_routing_config/$defs/time_based_canary"]])
		time_based_linear?: matchN(1, [_#defs."/$defs/traffic_routing_config/$defs/time_based_linear", list.MaxItems(1) & [..._#defs."/$defs/traffic_routing_config/$defs/time_based_linear"]])
	})

	#zonal_config: close({
		first_zone_monitor_duration_in_seconds?: number
		monitor_duration_in_seconds?:            number
		minimum_healthy_hosts_per_zone?: matchN(1, [_#defs."/$defs/zonal_config/$defs/minimum_healthy_hosts_per_zone", list.MaxItems(1) & [..._#defs."/$defs/zonal_config/$defs/minimum_healthy_hosts_per_zone"]])
	})

	_#defs: "/$defs/traffic_routing_config/$defs/time_based_canary": close({
		interval?:   number
		percentage?: number
	})

	_#defs: "/$defs/traffic_routing_config/$defs/time_based_linear": close({
		interval?:   number
		percentage?: number
	})

	_#defs: "/$defs/zonal_config/$defs/minimum_healthy_hosts_per_zone": close({
		type?:  string
		value?: number
	})
}
