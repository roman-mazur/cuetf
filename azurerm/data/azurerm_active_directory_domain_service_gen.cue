package data

#azurerm_active_directory_domain_service: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_active_directory_domain_service")
	close({
		deployment_id?:             string
		domain_configuration_type?: string
		domain_name?:               string
		filtered_sync_enabled?:     bool
		id?:                        string
		location?:                  string
		name!:                      string
		notifications?: [...close({
			additional_recipients?: [...string]
			notify_dc_admins?:     bool
			notify_global_admins?: bool
		})]
		replica_sets?: [...close({
			domain_controller_ip_addresses?: [...string]
			external_access_ip_address?: string
			id?:                         string
			location?:                   string
			service_status?:             string
			subnet_id?:                  string
		})]
		resource_group_name!: string
		resource_id?:         string
		secure_ldap?: [...close({
			certificate_expiry?:      string
			certificate_thumbprint?:  string
			enabled?:                 bool
			external_access_enabled?: bool
			public_certificate?:      string
		})]
		security?: [...close({
			kerberos_armoring_enabled?:       bool
			kerberos_rc4_encryption_enabled?: bool
			ntlm_v1_enabled?:                 bool
			sync_kerberos_passwords?:         bool
			sync_ntlm_passwords?:             bool
			sync_on_prem_passwords?:          bool
			tls_v1_enabled?:                  bool
		})]
		sku?:        string
		sync_owner?: string
		timeouts?:   #timeouts
		tags?: [string]: string
		tenant_id?: string
		version?:   number
	})

	#timeouts: close({
		read?: string
	})
}
