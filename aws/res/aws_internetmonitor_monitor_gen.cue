package res

import "list"

#aws_internetmonitor_monitor: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_internetmonitor_monitor")
	close({
		arn?:                          string
		id?:                           string
		max_city_networks_to_monitor?: number
		monitor_name!:                 string
		region?:                       string
		resources?: [...string]
		status?: string
		health_events_config?: matchN(1, [#health_events_config, list.MaxItems(1) & [...#health_events_config]])
		tags?: [string]: string
		internet_measurements_log_delivery?: matchN(1, [#internet_measurements_log_delivery, list.MaxItems(1) & [...#internet_measurements_log_delivery]])
		tags_all?: [string]: string
		traffic_percentage_to_monitor?: number
	})

	#health_events_config: close({
		availability_score_threshold?: number
		performance_score_threshold?:  number
	})

	#internet_measurements_log_delivery: close({
		s3_config?: matchN(1, [_#defs."/$defs/internet_measurements_log_delivery/$defs/s3_config", list.MaxItems(1) & [..._#defs."/$defs/internet_measurements_log_delivery/$defs/s3_config"]])
	})

	_#defs: "/$defs/internet_measurements_log_delivery/$defs/s3_config": close({
		bucket_name!:         string
		bucket_prefix?:       string
		log_delivery_status?: string
	})
}
