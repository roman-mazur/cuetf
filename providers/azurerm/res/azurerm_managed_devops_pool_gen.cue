package res

import "list"

#azurerm_managed_devops_pool: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_managed_devops_pool")
	close({
		azure_devops_organization!: matchN(1, [#azure_devops_organization, list.MaxItems(1) & [_, ...] & [...#azure_devops_organization]])
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		stateful_agent?: matchN(1, [#stateful_agent, list.MaxItems(1) & [...#stateful_agent]])
		stateless_agent?: matchN(1, [#stateless_agent, list.MaxItems(1) & [...#stateless_agent]])
		timeouts?: #timeouts
		virtual_machine_scale_set_fabric!: matchN(1, [#virtual_machine_scale_set_fabric, list.MaxItems(1) & [_, ...] & [...#virtual_machine_scale_set_fabric]])
		dev_center_project_id!: string
		id?:                    string
		location!:              string
		maximum_concurrency!:   number
		name!:                  string
		resource_group_name!:   string
		tags?: [string]: string
		work_folder?: string
	})

	#azure_devops_organization: close({
		organization!: matchN(1, [_#defs."/$defs/azure_devops_organization/$defs/organization", [_, ...] & [..._#defs."/$defs/azure_devops_organization/$defs/organization"]])
		permission?: matchN(1, [_#defs."/$defs/azure_devops_organization/$defs/permission", list.MaxItems(1) & [..._#defs."/$defs/azure_devops_organization/$defs/permission"]])
	})

	#identity: close({
		identity_ids!: [...string]
		type!: string
	})

	#stateful_agent: close({
		automatic_resource_prediction?: matchN(1, [_#defs."/$defs/stateful_agent/$defs/automatic_resource_prediction", list.MaxItems(1) & [..._#defs."/$defs/stateful_agent/$defs/automatic_resource_prediction"]])
		manual_resource_prediction?: matchN(1, [_#defs."/$defs/stateful_agent/$defs/manual_resource_prediction", list.MaxItems(1) & [..._#defs."/$defs/stateful_agent/$defs/manual_resource_prediction"]])
		grace_period_time_span?: string
		maximum_agent_lifetime?: string
	})

	#stateless_agent: close({
		automatic_resource_prediction?: matchN(1, [_#defs."/$defs/stateless_agent/$defs/automatic_resource_prediction", list.MaxItems(1) & [..._#defs."/$defs/stateless_agent/$defs/automatic_resource_prediction"]])
		manual_resource_prediction?: matchN(1, [_#defs."/$defs/stateless_agent/$defs/manual_resource_prediction", list.MaxItems(1) & [..._#defs."/$defs/stateless_agent/$defs/manual_resource_prediction"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	#virtual_machine_scale_set_fabric: close({
		image!: matchN(1, [_#defs."/$defs/virtual_machine_scale_set_fabric/$defs/image", [_, ...] & [..._#defs."/$defs/virtual_machine_scale_set_fabric/$defs/image"]])
		security?: matchN(1, [_#defs."/$defs/virtual_machine_scale_set_fabric/$defs/security", list.MaxItems(1) & [..._#defs."/$defs/virtual_machine_scale_set_fabric/$defs/security"]])
		storage?: matchN(1, [_#defs."/$defs/virtual_machine_scale_set_fabric/$defs/storage", list.MaxItems(1) & [..._#defs."/$defs/virtual_machine_scale_set_fabric/$defs/storage"]])
		os_disk_storage_account_type?: string
		sku_name!:                     string
		subnet_id?:                    string
	})

	_#defs: "/$defs/azure_devops_organization/$defs/organization": close({
		parallelism!: number
		projects?: [...string]
		url!: string
	})

	_#defs: "/$defs/azure_devops_organization/$defs/permission": close({
		administrator_account?: matchN(1, [_#defs."/$defs/azure_devops_organization/$defs/permission/$defs/administrator_account", list.MaxItems(1) & [..._#defs."/$defs/azure_devops_organization/$defs/permission/$defs/administrator_account"]])
		kind!: string
	})

	_#defs: "/$defs/azure_devops_organization/$defs/permission/$defs/administrator_account": close({
		groups?: [...string]
		users?: [...string]
	})

	_#defs: "/$defs/stateful_agent/$defs/automatic_resource_prediction": close({
		prediction_preference?: string
	})

	_#defs: "/$defs/stateful_agent/$defs/manual_resource_prediction": close({
		friday_schedule?: matchN(1, [_#defs."/$defs/stateful_agent/$defs/manual_resource_prediction/$defs/friday_schedule", [..._#defs."/$defs/stateful_agent/$defs/manual_resource_prediction/$defs/friday_schedule"]])
		monday_schedule?: matchN(1, [_#defs."/$defs/stateful_agent/$defs/manual_resource_prediction/$defs/monday_schedule", [..._#defs."/$defs/stateful_agent/$defs/manual_resource_prediction/$defs/monday_schedule"]])
		saturday_schedule?: matchN(1, [_#defs."/$defs/stateful_agent/$defs/manual_resource_prediction/$defs/saturday_schedule", [..._#defs."/$defs/stateful_agent/$defs/manual_resource_prediction/$defs/saturday_schedule"]])
		sunday_schedule?: matchN(1, [_#defs."/$defs/stateful_agent/$defs/manual_resource_prediction/$defs/sunday_schedule", [..._#defs."/$defs/stateful_agent/$defs/manual_resource_prediction/$defs/sunday_schedule"]])
		thursday_schedule?: matchN(1, [_#defs."/$defs/stateful_agent/$defs/manual_resource_prediction/$defs/thursday_schedule", [..._#defs."/$defs/stateful_agent/$defs/manual_resource_prediction/$defs/thursday_schedule"]])
		tuesday_schedule?: matchN(1, [_#defs."/$defs/stateful_agent/$defs/manual_resource_prediction/$defs/tuesday_schedule", [..._#defs."/$defs/stateful_agent/$defs/manual_resource_prediction/$defs/tuesday_schedule"]])
		wednesday_schedule?: matchN(1, [_#defs."/$defs/stateful_agent/$defs/manual_resource_prediction/$defs/wednesday_schedule", [..._#defs."/$defs/stateful_agent/$defs/manual_resource_prediction/$defs/wednesday_schedule"]])
		all_week_schedule?: number
		time_zone_name?:    string
	})

	_#defs: "/$defs/stateful_agent/$defs/manual_resource_prediction/$defs/friday_schedule": close({
		count!: number
		time!:  string
	})

	_#defs: "/$defs/stateful_agent/$defs/manual_resource_prediction/$defs/monday_schedule": close({
		count!: number
		time!:  string
	})

	_#defs: "/$defs/stateful_agent/$defs/manual_resource_prediction/$defs/saturday_schedule": close({
		count!: number
		time!:  string
	})

	_#defs: "/$defs/stateful_agent/$defs/manual_resource_prediction/$defs/sunday_schedule": close({
		count!: number
		time!:  string
	})

	_#defs: "/$defs/stateful_agent/$defs/manual_resource_prediction/$defs/thursday_schedule": close({
		count!: number
		time!:  string
	})

	_#defs: "/$defs/stateful_agent/$defs/manual_resource_prediction/$defs/tuesday_schedule": close({
		count!: number
		time!:  string
	})

	_#defs: "/$defs/stateful_agent/$defs/manual_resource_prediction/$defs/wednesday_schedule": close({
		count!: number
		time!:  string
	})

	_#defs: "/$defs/stateless_agent/$defs/automatic_resource_prediction": close({
		prediction_preference?: string
	})

	_#defs: "/$defs/stateless_agent/$defs/manual_resource_prediction": close({
		friday_schedule?: matchN(1, [_#defs."/$defs/stateless_agent/$defs/manual_resource_prediction/$defs/friday_schedule", [..._#defs."/$defs/stateless_agent/$defs/manual_resource_prediction/$defs/friday_schedule"]])
		monday_schedule?: matchN(1, [_#defs."/$defs/stateless_agent/$defs/manual_resource_prediction/$defs/monday_schedule", [..._#defs."/$defs/stateless_agent/$defs/manual_resource_prediction/$defs/monday_schedule"]])
		saturday_schedule?: matchN(1, [_#defs."/$defs/stateless_agent/$defs/manual_resource_prediction/$defs/saturday_schedule", [..._#defs."/$defs/stateless_agent/$defs/manual_resource_prediction/$defs/saturday_schedule"]])
		sunday_schedule?: matchN(1, [_#defs."/$defs/stateless_agent/$defs/manual_resource_prediction/$defs/sunday_schedule", [..._#defs."/$defs/stateless_agent/$defs/manual_resource_prediction/$defs/sunday_schedule"]])
		thursday_schedule?: matchN(1, [_#defs."/$defs/stateless_agent/$defs/manual_resource_prediction/$defs/thursday_schedule", [..._#defs."/$defs/stateless_agent/$defs/manual_resource_prediction/$defs/thursday_schedule"]])
		tuesday_schedule?: matchN(1, [_#defs."/$defs/stateless_agent/$defs/manual_resource_prediction/$defs/tuesday_schedule", [..._#defs."/$defs/stateless_agent/$defs/manual_resource_prediction/$defs/tuesday_schedule"]])
		wednesday_schedule?: matchN(1, [_#defs."/$defs/stateless_agent/$defs/manual_resource_prediction/$defs/wednesday_schedule", [..._#defs."/$defs/stateless_agent/$defs/manual_resource_prediction/$defs/wednesday_schedule"]])
		all_week_schedule?: number
		time_zone_name?:    string
	})

	_#defs: "/$defs/stateless_agent/$defs/manual_resource_prediction/$defs/friday_schedule": close({
		count!: number
		time!:  string
	})

	_#defs: "/$defs/stateless_agent/$defs/manual_resource_prediction/$defs/monday_schedule": close({
		count!: number
		time!:  string
	})

	_#defs: "/$defs/stateless_agent/$defs/manual_resource_prediction/$defs/saturday_schedule": close({
		count!: number
		time!:  string
	})

	_#defs: "/$defs/stateless_agent/$defs/manual_resource_prediction/$defs/sunday_schedule": close({
		count!: number
		time!:  string
	})

	_#defs: "/$defs/stateless_agent/$defs/manual_resource_prediction/$defs/thursday_schedule": close({
		count!: number
		time!:  string
	})

	_#defs: "/$defs/stateless_agent/$defs/manual_resource_prediction/$defs/tuesday_schedule": close({
		count!: number
		time!:  string
	})

	_#defs: "/$defs/stateless_agent/$defs/manual_resource_prediction/$defs/wednesday_schedule": close({
		count!: number
		time!:  string
	})

	_#defs: "/$defs/virtual_machine_scale_set_fabric/$defs/image": close({
		aliases?: [...string]
		buffer?:                string
		id?:                    string
		well_known_image_name?: string
	})

	_#defs: "/$defs/virtual_machine_scale_set_fabric/$defs/security": close({
		key_vault_management?: matchN(1, [_#defs."/$defs/virtual_machine_scale_set_fabric/$defs/security/$defs/key_vault_management", list.MaxItems(1) & [..._#defs."/$defs/virtual_machine_scale_set_fabric/$defs/security/$defs/key_vault_management"]])
		interactive_logon_enabled?: bool
	})

	_#defs: "/$defs/virtual_machine_scale_set_fabric/$defs/security/$defs/key_vault_management": close({
		certificate_store_location?: string
		certificate_store_name?:     string
		key_export_enabled?:         bool
		key_vault_certificate_ids!: [...string]
	})

	_#defs: "/$defs/virtual_machine_scale_set_fabric/$defs/storage": close({
		caching?:              string
		disk_size_in_gb!:      number
		drive_letter?:         string
		storage_account_type?: string
	})
}
