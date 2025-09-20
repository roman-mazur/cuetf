package res

import "list"

#azurerm_network_manager_verifier_workspace_reachability_analysis_intent: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_network_manager_verifier_workspace_reachability_analysis_intent")
	close({
		ip_traffic?: matchN(1, [#ip_traffic, list.MaxItems(1) & [_, ...] & [...#ip_traffic]])
		description?:             string
		destination_resource_id!: string
		id?:                      string
		name!:                    string
		source_resource_id!:      string
		verifier_workspace_id!:   string
		timeouts?:                #timeouts
	})

	#ip_traffic: close({
		destination_ips!: [...string]
		destination_ports!: [...string]
		protocols!: [...string]
		source_ips!: [...string]
		source_ports!: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
