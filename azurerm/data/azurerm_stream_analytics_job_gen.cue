package data

#azurerm_stream_analytics_job: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_stream_analytics_job")
	close({
		compatibility_level?:                      string
		data_locale?:                              string
		events_late_arrival_max_delay_in_seconds?: number
		events_out_of_order_max_delay_in_seconds?: number
		events_out_of_order_policy?:               string
		id?:                                       string
		identity?: [...close({
			identity_ids?: [...string]
			principal_id?: string
			tenant_id?:    string
			type?:         string
		})]
		job_id?:               string
		last_output_time?:     string
		location?:             string
		name!:                 string
		output_error_policy?:  string
		resource_group_name!:  string
		sku_name?:             string
		start_mode?:           string
		timeouts?:             #timeouts
		start_time?:           string
		streaming_units?:      number
		transformation_query?: string
	})

	#timeouts: close({
		read?: string
	})
}
