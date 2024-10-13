package res

import "list"

#aws_internetmonitor_monitor: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_internetmonitor_monitor")
	arn?:                          string
	id?:                           string
	max_city_networks_to_monitor?: number
	monitor_name!:                 string
	resources?: [...string]
	status?: string
	tags?: [string]: string
	tags_all?: [string]: string
	traffic_percentage_to_monitor?: number
	health_events_config?: #health_events_config | list.MaxItems(1) & [...#health_events_config]
	internet_measurements_log_delivery?: #internet_measurements_log_delivery | list.MaxItems(1) & [...#internet_measurements_log_delivery]

	#health_events_config: {
		availability_score_threshold?: number
		performance_score_threshold?:  number
	}

	#internet_measurements_log_delivery: {
		s3_config?: #internet_measurements_log_delivery.#s3_config | list.MaxItems(1) & [...#internet_measurements_log_delivery.#s3_config]

		#s3_config: {
			bucket_name!:         string
			bucket_prefix?:       string
			log_delivery_status?: string
		}
	}
}
