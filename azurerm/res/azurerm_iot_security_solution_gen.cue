package res

import "list"

#azurerm_iot_security_solution: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_iot_security_solution")
	close({
		disabled_data_sources?: [...string]
		display_name!: string
		enabled?:      bool
		events_to_export?: [...string]
		id?: string
		iothub_ids!: [...string]
		location!:                   string
		log_analytics_workspace_id?: string
		additional_workspace?: matchN(1, [#additional_workspace, [...#additional_workspace]])
		recommendations_enabled?: matchN(1, [#recommendations_enabled, list.MaxItems(1) & [...#recommendations_enabled]])
		log_unmasked_ips_enabled?: bool
		name!:                     string
		timeouts?:                 #timeouts
		query_for_resources?:      string
		query_subscription_ids?: [...string]
		resource_group_name!: string
		tags?: [string]: string
	})

	#additional_workspace: close({
		data_types!: [...string]
		workspace_id!: string
	})

	#recommendations_enabled: close({
		acr_authentication?:               bool
		agent_send_unutilized_msg?:        bool
		baseline?:                         bool
		edge_hub_mem_optimize?:            bool
		edge_logging_option?:              bool
		inconsistent_module_settings?:     bool
		install_agent?:                    bool
		ip_filter_deny_all?:               bool
		ip_filter_permissive_rule?:        bool
		open_ports?:                       bool
		permissive_firewall_policy?:       bool
		permissive_input_firewall_rules?:  bool
		permissive_output_firewall_rules?: bool
		privileged_docker_options?:        bool
		shared_credentials?:               bool
		vulnerable_tls_cipher_suite?:      bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
