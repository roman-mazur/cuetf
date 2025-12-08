package res

import "list"

#azurerm_hpc_cache: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_hpc_cache")
	close({
		automatically_rotate_key_to_latest_enabled?: bool
		cache_size_in_gb!:                           number
		id?:                                         string
		key_vault_key_id?:                           string
		location!:                                   string
		mount_addresses?: [...string]
		mtu?:        number
		name!:       string
		ntp_server?: string
		default_access_policy?: matchN(1, [#default_access_policy, list.MaxItems(1) & [...#default_access_policy]])
		directory_active_directory?: matchN(1, [#directory_active_directory, list.MaxItems(1) & [...#directory_active_directory]])
		directory_flat_file?: matchN(1, [#directory_flat_file, list.MaxItems(1) & [...#directory_flat_file]])
		resource_group_name!: string
		sku_name!:            string
		subnet_id!:           string
		directory_ldap?: matchN(1, [#directory_ldap, list.MaxItems(1) & [...#directory_ldap]])
		dns?: matchN(1, [#dns, list.MaxItems(1) & [...#dns]])
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		tags?: [string]: string
		timeouts?: #timeouts
	})

	#default_access_policy: close({
		access_rule!: matchN(1, [_#defs."/$defs/default_access_policy/$defs/access_rule", list.MaxItems(3) & [_, ...] & [..._#defs."/$defs/default_access_policy/$defs/access_rule"]])
	})

	#directory_active_directory: close({
		cache_netbios_name!:  string
		dns_primary_ip!:      string
		dns_secondary_ip?:    string
		domain_name!:         string
		domain_netbios_name!: string
		password!:            string
		username!:            string
	})

	#directory_flat_file: close({
		group_file_uri!:    string
		password_file_uri!: string
	})

	#directory_ldap: close({
		bind?: matchN(1, [_#defs."/$defs/directory_ldap/$defs/bind", list.MaxItems(1) & [..._#defs."/$defs/directory_ldap/$defs/bind"]])
		base_dn!:                            string
		certificate_validation_uri?:         string
		download_certificate_automatically?: bool
		encrypted?:                          bool
		server!:                             string
	})

	#dns: close({
		search_domain?: string
		servers!: [...string]
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

	_#defs: "/$defs/default_access_policy/$defs/access_rule": close({
		access!:                  string
		anonymous_gid?:           number
		anonymous_uid?:           number
		filter?:                  string
		root_squash_enabled?:     bool
		scope!:                   string
		submount_access_enabled?: bool
		suid_enabled?:            bool
	})

	_#defs: "/$defs/directory_ldap/$defs/bind": close({
		dn!:       string
		password!: string
	})
}
