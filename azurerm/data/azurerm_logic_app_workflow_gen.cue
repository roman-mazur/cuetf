package data

#azurerm_logic_app_workflow: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_logic_app_workflow")
	close({
		access_endpoint?: string
		connector_endpoint_ip_addresses?: [...string]
		connector_outbound_ip_addresses?: [...string]
		id?: string
		identity?: [...close({
			identity_ids?: [...string]
			principal_id?: string
			tenant_id?:    string
			type?:         string
		})]
		location?:                         string
		logic_app_integration_account_id?: string
		name!:                             string
		parameters?: [string]: string
		resource_group_name!: string
		tags?: [string]: string
		workflow_endpoint_ip_addresses?: [...string]
		timeouts?: #timeouts
		workflow_outbound_ip_addresses?: [...string]
		workflow_schema?:  string
		workflow_version?: string
	})

	#timeouts: close({
		read?: string
	})
}
