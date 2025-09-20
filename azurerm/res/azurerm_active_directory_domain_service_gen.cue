package res

import "list"

#azurerm_active_directory_domain_service: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_active_directory_domain_service")
	close({
		deployment_id?: string
		initial_replica_set?: matchN(1, [#initial_replica_set, list.MaxItems(1) & [_, ...] & [...#initial_replica_set]])
		domain_configuration_type?: string
		domain_name!:               string
		filtered_sync_enabled?:     bool
		id?:                        string
		location!:                  string
		name!:                      string
		resource_group_name!:       string
		notifications?: matchN(1, [#notifications, list.MaxItems(1) & [...#notifications]])
		secure_ldap?: matchN(1, [#secure_ldap, list.MaxItems(1) & [...#secure_ldap]])
		resource_id?: string
		sku!:         string
		sync_owner?:  string
		tags?: [string]: string
		tenant_id?: string
		security?: matchN(1, [#security, list.MaxItems(1) & [...#security]])
		timeouts?: #timeouts
		version?:  number
	})

	#initial_replica_set: close({
		domain_controller_ip_addresses?: [...string]
		external_access_ip_address?: string
		id?:                         string
		location?:                   string
		service_status?:             string
		subnet_id!:                  string
	})

	#notifications: close({
		additional_recipients?: [...string]
		notify_dc_admins?:     bool
		notify_global_admins?: bool
	})

	#secure_ldap: close({
		certificate_expiry?:       string
		certificate_thumbprint?:   string
		enabled!:                  bool
		external_access_enabled?:  bool
		pfx_certificate!:          string
		pfx_certificate_password!: string
		public_certificate?:       string
	})

	#security: close({
		kerberos_armoring_enabled?:       bool
		kerberos_rc4_encryption_enabled?: bool
		ntlm_v1_enabled?:                 bool
		sync_kerberos_passwords?:         bool
		sync_ntlm_passwords?:             bool
		sync_on_prem_passwords?:          bool
		tls_v1_enabled?:                  bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
