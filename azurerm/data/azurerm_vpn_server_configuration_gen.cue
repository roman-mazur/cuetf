package data

#azurerm_vpn_server_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_vpn_server_configuration")
	close({
		azure_active_directory_authentication?: [...close({
			audience?: string
			issuer?:   string
			tenant?:   string
		})]
		client_revoked_certificate?: [...close({
			name?:       string
			thumbprint?: string
		})]
		client_root_certificate?: [...close({
			name?:             string
			public_cert_data?: string
		})]
		id?: string
		ipsec_policy?: [...close({
			dh_group?:               string
			ike_encryption?:         string
			ike_integrity?:          string
			ipsec_encryption?:       string
			ipsec_integrity?:        string
			pfs_group?:              string
			sa_data_size_kilobytes?: number
			sa_lifetime_seconds?:    number
		})]
		location?: string
		name!:     string
		radius?: [...close({
			client_root_certificate?: [...close({
				name?:       string
				thumbprint?: string
			})]
			server?: [...close({
				address?: string
				score?:   number
				secret?:  string
			})]
			server_root_certificate?: [...close({
				name?:             string
				public_cert_data?: string
			})]
		})]
		timeouts?:            #timeouts
		resource_group_name!: string
		tags?: [string]: string
		vpn_authentication_types?: [...string]
		vpn_protocols?: [...string]
	})

	#timeouts: close({
		read?: string
	})
}
