package data

#azurerm_site_recovery_replication_recovery_plan: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_site_recovery_replication_recovery_plan")
	close({
		timeouts?: #timeouts
		azure_to_azure_settings?: [...close({
			primary_edge_zone?:  string
			primary_zone?:       string
			recovery_edge_zone?: string
			recovery_zone?:      string
		})]
		failover_deployment_model?: string
		id?:                        string
		name!:                      string
		recovery_group?: [...close({
			post_action?: [...[...close({
				fabric_location?: string
				fail_over_directions?: [...string]
				fail_over_types?: [...string]
				manual_action_instruction?: string
				name?:                      string
				runbook_id?:                string
				script_path?:               string
				type?:                      string
			})]]
			pre_action?: [...[...close({
				fabric_location?: string
				fail_over_directions?: [...string]
				fail_over_types?: [...string]
				manual_action_instruction?: string
				name?:                      string
				runbook_id?:                string
				script_path?:               string
				type?:                      string
			})]]
			replicated_protected_items?: [...string]
			type?: string
		})]
		recovery_vault_id!:         string
		source_recovery_fabric_id?: string
		target_recovery_fabric_id?: string
	})

	#timeouts: close({
		read?: string
	})
}
