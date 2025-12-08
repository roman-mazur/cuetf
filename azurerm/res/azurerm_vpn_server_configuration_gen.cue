package res

import "list"

#azurerm_vpn_server_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_vpn_server_configuration")
	close({
		azure_active_directory_authentication?: matchN(1, [#azure_active_directory_authentication, [...#azure_active_directory_authentication]])
		client_revoked_certificate?: matchN(1, [#client_revoked_certificate, [...#client_revoked_certificate]])
		id?:                  string
		location!:            string
		name!:                string
		resource_group_name!: string
		client_root_certificate?: matchN(1, [#client_root_certificate, [...#client_root_certificate]])
		ipsec_policy?: matchN(1, [#ipsec_policy, list.MaxItems(1) & [...#ipsec_policy]])
		radius?: matchN(1, [#radius, list.MaxItems(1) & [...#radius]])
		tags?: [string]: string
		timeouts?: #timeouts
		vpn_authentication_types!: [...string]
		vpn_protocols?: [...string]
	})

	#azure_active_directory_authentication: close({
		audience!: string
		issuer!:   string
		tenant!:   string
	})

	#client_revoked_certificate: close({
		name!:       string
		thumbprint!: string
	})

	#client_root_certificate: close({
		name!:             string
		public_cert_data!: string
	})

	#ipsec_policy: close({
		dh_group!:               string
		ike_encryption!:         string
		ike_integrity!:          string
		ipsec_encryption!:       string
		ipsec_integrity!:        string
		pfs_group!:              string
		sa_data_size_kilobytes!: number
		sa_lifetime_seconds!:    number
	})

	#radius: close({
		client_root_certificate?: matchN(1, [_#defs."/$defs/radius/$defs/client_root_certificate", [..._#defs."/$defs/radius/$defs/client_root_certificate"]])
		server?: matchN(1, [_#defs."/$defs/radius/$defs/server", [..._#defs."/$defs/radius/$defs/server"]])
		server_root_certificate?: matchN(1, [_#defs."/$defs/radius/$defs/server_root_certificate", [..._#defs."/$defs/radius/$defs/server_root_certificate"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/radius/$defs/client_root_certificate": close({
		name!:       string
		thumbprint!: string
	})

	_#defs: "/$defs/radius/$defs/server": close({
		address!: string
		score!:   number
		secret!:  string
	})

	_#defs: "/$defs/radius/$defs/server_root_certificate": close({
		name!:             string
		public_cert_data!: string
	})
}
