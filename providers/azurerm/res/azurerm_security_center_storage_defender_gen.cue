package res

#azurerm_security_center_storage_defender: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_security_center_storage_defender")
	close({
		timeouts?:                                    #timeouts
		id?:                                          string
		malware_scanning_on_upload_cap_gb_per_month?: number
		malware_scanning_on_upload_enabled?:          bool
		override_subscription_settings_enabled?:      bool
		scan_results_event_grid_topic_id?:            string
		sensitive_data_discovery_enabled?:            bool
		storage_account_id!:                          string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
