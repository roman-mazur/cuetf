package res

import "list"

#azurerm_arc_kubernetes_flux_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_arc_kubernetes_flux_configuration")
	close({
		cluster_id!: string
		blob_storage?: matchN(1, [#blob_storage, list.MaxItems(1) & [...#blob_storage]])
		continuous_reconciliation_enabled?: bool
		id?:                                string
		name!:                              string
		namespace!:                         string
		scope?:                             string
		bucket?: matchN(1, [#bucket, list.MaxItems(1) & [...#bucket]])
		git_repository?: matchN(1, [#git_repository, list.MaxItems(1) & [...#git_repository]])
		kustomizations!: matchN(1, [#kustomizations, [_, ...] & [...#kustomizations]])
		timeouts?: #timeouts
	})

	#blob_storage: close({
		service_principal?: matchN(1, [_#defs."/$defs/blob_storage/$defs/service_principal", list.MaxItems(1) & [..._#defs."/$defs/blob_storage/$defs/service_principal"]])
		account_key?:              string
		container_id!:             string
		local_auth_reference?:     string
		sas_token?:                string
		sync_interval_in_seconds?: number
		timeout_in_seconds?:       number
	})

	#bucket: close({
		access_key?:               string
		bucket_name!:              string
		local_auth_reference?:     string
		secret_key_base64?:        string
		sync_interval_in_seconds?: number
		timeout_in_seconds?:       number
		tls_enabled?:              bool
		url!:                      string
	})

	#git_repository: close({
		https_ca_cert_base64?:     string
		https_key_base64?:         string
		https_user?:               string
		local_auth_reference?:     string
		reference_type!:           string
		reference_value!:          string
		ssh_known_hosts_base64?:   string
		ssh_private_key_base64?:   string
		sync_interval_in_seconds?: number
		timeout_in_seconds?:       number
		url!:                      string
	})

	#kustomizations: close({
		depends_on?: [...string]
		garbage_collection_enabled?: bool
		name!:                       string
		path?:                       string
		recreating_enabled?:         bool
		retry_interval_in_seconds?:  number
		sync_interval_in_seconds?:   number
		timeout_in_seconds?:         number
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/blob_storage/$defs/service_principal": close({
		client_certificate_base64?:     string
		client_certificate_password?:   string
		client_certificate_send_chain?: bool
		client_id!:                     string
		client_secret?:                 string
		tenant_id!:                     string
	})
}
