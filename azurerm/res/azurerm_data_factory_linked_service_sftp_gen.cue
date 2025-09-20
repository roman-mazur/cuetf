package res

import "list"

#azurerm_data_factory_linked_service_sftp: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_data_factory_linked_service_sftp")
	close({
		additional_properties?: [string]: string
		annotations?: [...string]
		authentication_type!:      string
		data_factory_id!:          string
		description?:              string
		host!:                     string
		host_key_fingerprint?:     string
		id?:                       string
		integration_runtime_name?: string
		name!:                     string
		key_vault_password?: matchN(1, [#key_vault_password, [...#key_vault_password]])
		key_vault_private_key_content_base64?: matchN(1, [#key_vault_private_key_content_base64, list.MaxItems(1) & [...#key_vault_private_key_content_base64]])
		parameters?: [string]: string
		password?:                   string
		port!:                       number
		private_key_content_base64?: string
		key_vault_private_key_passphrase?: matchN(1, [#key_vault_private_key_passphrase, list.MaxItems(1) & [...#key_vault_private_key_passphrase]])
		private_key_passphrase?:   string
		private_key_path?:         string
		skip_host_key_validation?: bool
		username!:                 string
		timeouts?:                 #timeouts
	})

	#key_vault_password: close({
		linked_service_name!: string
		secret_name!:         string
	})

	#key_vault_private_key_content_base64: close({
		linked_service_name!: string
		secret_name!:         string
	})

	#key_vault_private_key_passphrase: close({
		linked_service_name!: string
		secret_name!:         string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
