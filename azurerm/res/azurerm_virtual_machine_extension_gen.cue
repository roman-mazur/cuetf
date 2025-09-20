package res

import "list"

#azurerm_virtual_machine_extension: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_virtual_machine_extension")
	close({
		auto_upgrade_minor_version?:  bool
		automatic_upgrade_enabled?:   bool
		failure_suppression_enabled?: bool
		id?:                          string
		name!:                        string
		protected_settings?:          string
		provision_after_extensions?: [...string]
		protected_settings_from_key_vault?: matchN(1, [#protected_settings_from_key_vault, list.MaxItems(1) & [...#protected_settings_from_key_vault]])
		publisher!: string
		settings?:  string
		timeouts?:  #timeouts
		tags?: [string]: string
		type!:                 string
		type_handler_version!: string
		virtual_machine_id!:   string
	})

	#protected_settings_from_key_vault: close({
		secret_url!:      string
		source_vault_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
