package res

import "list"

#azurerm_netapp_account: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_netapp_account")
	close({
		id?: string
		active_directory?: matchN(1, [#active_directory, list.MaxItems(1) & [...#active_directory]])
		location!:            string
		name!:                string
		resource_group_name!: string
		tags?: [string]: string
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		timeouts?: #timeouts
	})

	#active_directory: close({
		// If enabled, AES encryption will be enabled for SMB
		// communication.
		aes_encryption_enabled?: bool
		dns_servers!: [...string]
		domain!: string

		// Name of the active directory machine. This optional parameter
		// is used only while creating kerberos volume.
		kerberos_ad_name?: string

		// IP address of the KDC server (usually same the DC). This
		// optional parameter is used only while creating kerberos
		// volume.
		kerberos_kdc_ip?: string

		// Specifies whether or not the LDAP traffic needs to be secured
		// via TLS.
		ldap_over_tls_enabled?: bool

		// Specifies whether or not the LDAP traffic needs to be signed.
		ldap_signing_enabled?: bool

		// If enabled, NFS client local users can also (in addition to
		// LDAP users) access the NFS volumes.
		local_nfs_users_with_ldap_allowed?: bool

		// The Organizational Unit (OU) within the Windows Active
		// Directory where machines will be created. If blank, defaults
		// to 'CN=Computers'
		organizational_unit?: string
		password!:            string

		// When LDAP over SSL/TLS is enabled, the LDAP client is required
		// to have base64 encoded Active Directory Certificate Service's
		// self-signed root CA certificate, this optional parameter is
		// used only for dual protocol with LDAP user-mapping volumes.
		server_root_ca_certificate?: string

		// The Active Directory site the service will limit Domain
		// Controller discovery to. If blank, defaults to
		// 'Default-First-Site-Name'
		site_name?:       string
		smb_server_name!: string
		username!:        string
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
}
