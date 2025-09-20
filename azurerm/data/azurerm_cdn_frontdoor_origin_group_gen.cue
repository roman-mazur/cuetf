package data

#azurerm_cdn_frontdoor_origin_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_cdn_frontdoor_origin_group")
	close({
		timeouts?:                 #timeouts
		cdn_frontdoor_profile_id?: string
		health_probe?: [...close({
			interval_in_seconds?: number
			path?:                string
			protocol?:            string
			request_type?:        string
		})]
		id?: string
		load_balancing?: [...close({
			additional_latency_in_milliseconds?: number
			sample_size?:                        number
			successful_samples_required?:        number
		})]
		name!:                                                      string
		profile_name!:                                              string
		resource_group_name!:                                       string
		restore_traffic_time_to_healed_or_new_endpoint_in_minutes?: number
		session_affinity_enabled?:                                  bool
	})

	#timeouts: close({
		read?: string
	})
}
