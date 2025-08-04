package res

#aws_networkfirewall_tls_inspection_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_networkfirewall_tls_inspection_configuration")
	close({
		arn?: string
		certificate_authority?: [...close({
			certificate_arn?:    string
			certificate_serial?: string
			status?:             string
			status_message?:     string
		})]
		certificates?: [...close({
			certificate_arn?:    string
			certificate_serial?: string
			status?:             string
			status_message?:     string
		})]
		description?: string
		encryption_configuration?: [...close({
			key_id?: string
			type?:   string
		})]
		id?:                     string
		name!:                   string
		timeouts?:               #timeouts
		number_of_associations?: number
		region?:                 string
		tls_inspection_configuration?: matchN(1, [#tls_inspection_configuration, [...#tls_inspection_configuration]])
		tags?: [string]:     string
		tags_all?: [string]: string
		tls_inspection_configuration_id?: string
		update_token?:                    string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#tls_inspection_configuration: close({
		server_certificate_configuration?: matchN(1, [_#defs."/$defs/tls_inspection_configuration/$defs/server_certificate_configuration", [..._#defs."/$defs/tls_inspection_configuration/$defs/server_certificate_configuration"]])
	})

	_#defs: "/$defs/tls_inspection_configuration/$defs/server_certificate_configuration": close({
		check_certificate_revocation_status?: matchN(1, [_#defs."/$defs/tls_inspection_configuration/$defs/server_certificate_configuration/$defs/check_certificate_revocation_status", [..._#defs."/$defs/tls_inspection_configuration/$defs/server_certificate_configuration/$defs/check_certificate_revocation_status"]])
		scope?: matchN(1, [_#defs."/$defs/tls_inspection_configuration/$defs/server_certificate_configuration/$defs/scope", [..._#defs."/$defs/tls_inspection_configuration/$defs/server_certificate_configuration/$defs/scope"]])
		server_certificate?: matchN(1, [_#defs."/$defs/tls_inspection_configuration/$defs/server_certificate_configuration/$defs/server_certificate", [..._#defs."/$defs/tls_inspection_configuration/$defs/server_certificate_configuration/$defs/server_certificate"]])
		certificate_authority_arn?: string
	})

	_#defs: "/$defs/tls_inspection_configuration/$defs/server_certificate_configuration/$defs/check_certificate_revocation_status": close({
		revoked_status_action?: string
		unknown_status_action?: string
	})

	_#defs: "/$defs/tls_inspection_configuration/$defs/server_certificate_configuration/$defs/scope": close({
		destination?: matchN(1, [_#defs."/$defs/tls_inspection_configuration/$defs/server_certificate_configuration/$defs/scope/$defs/destination", [..._#defs."/$defs/tls_inspection_configuration/$defs/server_certificate_configuration/$defs/scope/$defs/destination"]])
		destination_ports?: matchN(1, [_#defs."/$defs/tls_inspection_configuration/$defs/server_certificate_configuration/$defs/scope/$defs/destination_ports", [..._#defs."/$defs/tls_inspection_configuration/$defs/server_certificate_configuration/$defs/scope/$defs/destination_ports"]])
		source?: matchN(1, [_#defs."/$defs/tls_inspection_configuration/$defs/server_certificate_configuration/$defs/scope/$defs/source", [..._#defs."/$defs/tls_inspection_configuration/$defs/server_certificate_configuration/$defs/scope/$defs/source"]])
		source_ports?: matchN(1, [_#defs."/$defs/tls_inspection_configuration/$defs/server_certificate_configuration/$defs/scope/$defs/source_ports", [..._#defs."/$defs/tls_inspection_configuration/$defs/server_certificate_configuration/$defs/scope/$defs/source_ports"]])
		protocols!: [...number]
	})

	_#defs: "/$defs/tls_inspection_configuration/$defs/server_certificate_configuration/$defs/scope/$defs/destination": close({
		address_definition!: string
	})

	_#defs: "/$defs/tls_inspection_configuration/$defs/server_certificate_configuration/$defs/scope/$defs/destination_ports": close({
		from_port!: number
		to_port!:   number
	})

	_#defs: "/$defs/tls_inspection_configuration/$defs/server_certificate_configuration/$defs/scope/$defs/source": close({
		address_definition!: string
	})

	_#defs: "/$defs/tls_inspection_configuration/$defs/server_certificate_configuration/$defs/scope/$defs/source_ports": close({
		from_port!: number
		to_port!:   number
	})

	_#defs: "/$defs/tls_inspection_configuration/$defs/server_certificate_configuration/$defs/server_certificate": close({
		resource_arn?: string
	})
}
