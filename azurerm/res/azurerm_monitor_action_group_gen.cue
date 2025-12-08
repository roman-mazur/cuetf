package res

import "list"

#azurerm_monitor_action_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_monitor_action_group")
	close({
		arm_role_receiver?: matchN(1, [#arm_role_receiver, [...#arm_role_receiver]])
		enabled?:             bool
		id?:                  string
		location?:            string
		name!:                string
		resource_group_name!: string
		short_name!:          string
		tags?: [string]: string
		automation_runbook_receiver?: matchN(1, [#automation_runbook_receiver, [...#automation_runbook_receiver]])
		azure_app_push_receiver?: matchN(1, [#azure_app_push_receiver, [...#azure_app_push_receiver]])
		azure_function_receiver?: matchN(1, [#azure_function_receiver, [...#azure_function_receiver]])
		email_receiver?: matchN(1, [#email_receiver, [...#email_receiver]])
		event_hub_receiver?: matchN(1, [#event_hub_receiver, [...#event_hub_receiver]])
		itsm_receiver?: matchN(1, [#itsm_receiver, [...#itsm_receiver]])
		logic_app_receiver?: matchN(1, [#logic_app_receiver, [...#logic_app_receiver]])
		sms_receiver?: matchN(1, [#sms_receiver, [...#sms_receiver]])
		timeouts?: #timeouts
		voice_receiver?: matchN(1, [#voice_receiver, [...#voice_receiver]])
		webhook_receiver?: matchN(1, [#webhook_receiver, [...#webhook_receiver]])
	})

	#arm_role_receiver: close({
		name!:                    string
		role_id!:                 string
		use_common_alert_schema?: bool
	})

	#automation_runbook_receiver: close({
		automation_account_id!:   string
		is_global_runbook!:       bool
		name!:                    string
		runbook_name!:            string
		service_uri!:             string
		use_common_alert_schema?: bool
		webhook_resource_id!:     string
	})

	#azure_app_push_receiver: close({
		email_address!: string
		name!:          string
	})

	#azure_function_receiver: close({
		function_app_resource_id!: string
		function_name!:            string
		http_trigger_url!:         string
		name!:                     string
		use_common_alert_schema?:  bool
	})

	#email_receiver: close({
		email_address!:           string
		name!:                    string
		use_common_alert_schema?: bool
	})

	#event_hub_receiver: close({
		event_hub_name!:          string
		event_hub_namespace!:     string
		name!:                    string
		subscription_id?:         string
		tenant_id?:               string
		use_common_alert_schema?: bool
	})

	#itsm_receiver: close({
		connection_id!:        string
		name!:                 string
		region!:               string
		ticket_configuration!: string
		workspace_id!:         string
	})

	#logic_app_receiver: close({
		callback_url!:            string
		name!:                    string
		resource_id!:             string
		use_common_alert_schema?: bool
	})

	#sms_receiver: close({
		country_code!: string
		name!:         string
		phone_number!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	#voice_receiver: close({
		country_code!: string
		name!:         string
		phone_number!: string
	})

	#webhook_receiver: close({
		aad_auth?: matchN(1, [_#defs."/$defs/webhook_receiver/$defs/aad_auth", list.MaxItems(1) & [..._#defs."/$defs/webhook_receiver/$defs/aad_auth"]])
		name!:                    string
		service_uri!:             string
		use_common_alert_schema?: bool
	})

	_#defs: "/$defs/webhook_receiver/$defs/aad_auth": close({
		identifier_uri?: string
		object_id!:      string
		tenant_id?:      string
	})
}
