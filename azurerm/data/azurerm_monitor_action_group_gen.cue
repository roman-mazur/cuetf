package data

#azurerm_monitor_action_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_monitor_action_group")
	close({
		arm_role_receiver?: [...close({
			name?:                    string
			role_id?:                 string
			use_common_alert_schema?: bool
		})]
		automation_runbook_receiver?: [...close({
			automation_account_id?:   string
			is_global_runbook?:       bool
			name?:                    string
			runbook_name?:            string
			service_uri?:             string
			use_common_alert_schema?: bool
			webhook_resource_id?:     string
		})]
		azure_app_push_receiver?: [...close({
			email_address?: string
			name?:          string
		})]
		azure_function_receiver?: [...close({
			function_app_resource_id?: string
			function_name?:            string
			http_trigger_url?:         string
			name?:                     string
			use_common_alert_schema?:  bool
		})]
		email_receiver?: [...close({
			email_address?:           string
			name?:                    string
			use_common_alert_schema?: bool
		})]
		enabled?: bool
		event_hub_receiver?: [...close({
			event_hub_name?:          string
			event_hub_namespace?:     string
			name?:                    string
			subscription_id?:         string
			tenant_id?:               string
			use_common_alert_schema?: bool
		})]
		id?: string
		itsm_receiver?: [...close({
			connection_id?:        string
			name?:                 string
			region?:               string
			ticket_configuration?: string
			workspace_id?:         string
		})]
		timeouts?: #timeouts
		logic_app_receiver?: [...close({
			callback_url?:            string
			name?:                    string
			resource_id?:             string
			use_common_alert_schema?: bool
		})]
		name!:                string
		resource_group_name!: string
		short_name?:          string
		sms_receiver?: [...close({
			country_code?: string
			name?:         string
			phone_number?: string
		})]
		voice_receiver?: [...close({
			country_code?: string
			name?:         string
			phone_number?: string
		})]
		webhook_receiver?: [...close({
			aad_auth?: [...close({
				identifier_uri?: string
				object_id?:      string
				tenant_id?:      string
			})]
			name?:                    string
			service_uri?:             string
			use_common_alert_schema?: bool
		})]
	})

	#timeouts: close({
		read?: string
	})
}
