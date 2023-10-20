package res

import "list"

#aws_codedeploy_deployment_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_codedeploy_deployment_config")
	compute_platform?:       string
	deployment_config_id?:   string
	deployment_config_name:  string
	id?:                     string
	minimum_healthy_hosts?:  #minimum_healthy_hosts | list.MaxItems(1) & [...#minimum_healthy_hosts]
	traffic_routing_config?: #traffic_routing_config | list.MaxItems(1) & [...#traffic_routing_config]

	#minimum_healthy_hosts: {
		type?:  string
		value?: number
	}

	#traffic_routing_config: {
		type?:              string
		time_based_canary?: #traffic_routing_config.#time_based_canary | list.MaxItems(1) & [...#traffic_routing_config.#time_based_canary]
		time_based_linear?: #traffic_routing_config.#time_based_linear | list.MaxItems(1) & [...#traffic_routing_config.#time_based_linear]

		#time_based_canary: {
			interval?:   number
			percentage?: number
		}

		#time_based_linear: {
			interval?:   number
			percentage?: number
		}
	}
}
