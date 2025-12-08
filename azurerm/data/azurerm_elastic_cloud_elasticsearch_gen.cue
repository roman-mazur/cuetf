package data

#azurerm_elastic_cloud_elasticsearch: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_elastic_cloud_elasticsearch")
	close({
		elastic_cloud_deployment_id?:   string
		elastic_cloud_email_address?:   string
		elastic_cloud_sso_default_url?: string
		elastic_cloud_user_id?:         string
		elasticsearch_service_url?:     string
		id?:                            string
		kibana_service_url?:            string
		kibana_sso_uri?:                string
		logs?: matchN(1, [#logs, [...#logs]])
		location?:            string
		monitoring_enabled?:  bool
		name!:                string
		timeouts?:            #timeouts
		resource_group_name!: string
		sku_name?:            string
		tags?: [string]: string
	})

	#logs: close({
		filtering_tag?: [...close({
			action?: string
			name?:   string
			value?:  string
		})]
		send_activity_logs?:     bool
		send_azuread_logs?:      bool
		send_subscription_logs?: bool
	})

	#timeouts: close({
		read?: string
	})
}
