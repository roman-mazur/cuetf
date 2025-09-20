package res

import "list"

#azurerm_spring_cloud_app: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_spring_cloud_app")
	close({
		addon_json?: string
		custom_persistent_disk?: matchN(1, [#custom_persistent_disk, [...#custom_persistent_disk]])
		fqdn?:                    string
		https_only?:              bool
		id?:                      string
		is_public?:               bool
		name!:                    string
		public_endpoint_enabled?: bool
		resource_group_name!:     string
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		ingress_settings?: matchN(1, [#ingress_settings, list.MaxItems(1) & [...#ingress_settings]])
		service_name!: string
		persistent_disk?: matchN(1, [#persistent_disk, list.MaxItems(1) & [...#persistent_disk]])
		timeouts?:    #timeouts
		tls_enabled?: bool
		url?:         string
	})

	#custom_persistent_disk: close({
		mount_options?: [...string]
		mount_path!:        string
		read_only_enabled?: bool
		share_name!:        string
		storage_name!:      string
	})

	#identity: close({
		identity_ids?: [...string]
		principal_id?: string
		tenant_id?:    string
		type!:         string
	})

	#ingress_settings: close({
		backend_protocol?:        string
		read_timeout_in_seconds?: number
		send_timeout_in_seconds?: number
		session_affinity?:        string
		session_cookie_max_age?:  number
	})

	#persistent_disk: close({
		mount_path?: string
		size_in_gb!: number
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
