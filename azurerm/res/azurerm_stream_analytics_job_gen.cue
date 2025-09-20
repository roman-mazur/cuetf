package res

import "list"

#azurerm_stream_analytics_job: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_stream_analytics_job")
	close({
		compatibility_level?:                      string
		content_storage_policy?:                   string
		data_locale?:                              string
		events_late_arrival_max_delay_in_seconds?: number
		events_out_of_order_max_delay_in_seconds?: number
		events_out_of_order_policy?:               string
		id?:                                       string
		job_id?:                                   string
		location!:                                 string
		name!:                                     string
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		job_storage_account?: matchN(1, [#job_storage_account, [...#job_storage_account]])
		output_error_policy?:         string
		resource_group_name!:         string
		sku_name?:                    string
		timeouts?:                    #timeouts
		stream_analytics_cluster_id?: string
		streaming_units?:             number
		tags?: [string]: string
		transformation_query!: string
		type?:                 string
	})

	#identity: close({
		identity_ids?: [...string]
		principal_id?: string
		tenant_id?:    string
		type!:         string
	})

	#job_storage_account: close({
		account_key!:         string
		account_name!:        string
		authentication_mode?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
