package res

#azurerm_application_insights: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_application_insights")
	close({
		app_id?:                                string
		application_type!:                      string
		connection_string?:                     string
		daily_data_cap_in_gb?:                  number
		daily_data_cap_notifications_disabled?: bool
		disable_ip_masking?:                    bool
		force_customer_storage_for_profiler?:   bool
		id?:                                    string
		instrumentation_key?:                   string
		internet_ingestion_enabled?:            bool
		internet_query_enabled?:                bool
		local_authentication_disabled?:         bool
		location!:                              string
		name!:                                  string
		resource_group_name!:                   string
		timeouts?:                              #timeouts
		retention_in_days?:                     number
		sampling_percentage?:                   number
		tags?: [string]: string
		workspace_id?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
