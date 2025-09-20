package res

import "list"

#azurerm_logic_app_workflow: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_logic_app_workflow")
	close({
		access_endpoint?: string
		access_control?: matchN(1, [#access_control, list.MaxItems(1) & [...#access_control]])
		connector_endpoint_ip_addresses?: [...string]
		connector_outbound_ip_addresses?: [...string]
		enabled?:                            bool
		id?:                                 string
		integration_service_environment_id?: string
		location!:                           string
		logic_app_integration_account_id?:   string
		name!:                               string
		parameters?: [string]: string
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		resource_group_name!: string
		tags?: [string]: string
		workflow_endpoint_ip_addresses?: [...string]
		workflow_outbound_ip_addresses?: [...string]
		timeouts?: #timeouts
		workflow_parameters?: [string]: string
		workflow_schema?:  string
		workflow_version?: string
	})

	#access_control: close({
		action?: matchN(1, [_#defs."/$defs/access_control/$defs/action", list.MaxItems(1) & [..._#defs."/$defs/access_control/$defs/action"]])
		content?: matchN(1, [_#defs."/$defs/access_control/$defs/content", list.MaxItems(1) & [..._#defs."/$defs/access_control/$defs/content"]])
		trigger?: matchN(1, [_#defs."/$defs/access_control/$defs/trigger", list.MaxItems(1) & [..._#defs."/$defs/access_control/$defs/trigger"]])
		workflow_management?: matchN(1, [_#defs."/$defs/access_control/$defs/workflow_management", list.MaxItems(1) & [..._#defs."/$defs/access_control/$defs/workflow_management"]])
	})

	#identity: close({
		identity_ids?: [...string]
		principal_id?: string
		tenant_id?:    string
		type!:         string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/access_control/$defs/action": close({
		allowed_caller_ip_address_range!: [...string]
	})

	_#defs: "/$defs/access_control/$defs/content": close({
		allowed_caller_ip_address_range!: [...string]
	})

	_#defs: "/$defs/access_control/$defs/trigger": close({
		open_authentication_policy?: matchN(1, [_#defs."/$defs/access_control/$defs/trigger/$defs/open_authentication_policy", [..._#defs."/$defs/access_control/$defs/trigger/$defs/open_authentication_policy"]])
		allowed_caller_ip_address_range?: [...string]
	})

	_#defs: "/$defs/access_control/$defs/trigger/$defs/open_authentication_policy": close({
		claim?: matchN(1, [_#defs."/$defs/access_control/$defs/trigger/$defs/open_authentication_policy/$defs/claim", [_, ...] & [..._#defs."/$defs/access_control/$defs/trigger/$defs/open_authentication_policy/$defs/claim"]])
		name!: string
	})

	_#defs: "/$defs/access_control/$defs/trigger/$defs/open_authentication_policy/$defs/claim": close({
		name!:  string
		value!: string
	})

	_#defs: "/$defs/access_control/$defs/workflow_management": close({
		allowed_caller_ip_address_range!: [...string]
	})
}
