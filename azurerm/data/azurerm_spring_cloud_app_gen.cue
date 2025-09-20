package data

#azurerm_spring_cloud_app: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_spring_cloud_app")
	close({
		fqdn?:       string
		https_only?: bool
		id?:         string
		identity?: [...close({
			identity_ids?: [...string]
			principal_id?: string
			tenant_id?:    string
			type?:         string
		})]
		is_public?: bool
		name!:      string
		persistent_disk?: [...close({
			mount_path?: string
			size_in_gb?: number
		})]
		resource_group_name!: string
		service_name!:        string
		timeouts?:            #timeouts
		tls_enabled?:         bool
		url?:                 string
	})

	#timeouts: close({
		read?: string
	})
}
