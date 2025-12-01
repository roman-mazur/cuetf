package res

#aws_networkfirewall_tls_inspection_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_networkfirewall_tls_inspection_configuration")
	close({
		arn?:      string
		timeouts?: #timeouts
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

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		id?:     string
		tls_inspection_configuration?: matchN(1, [#tls_inspection_configuration, [...#tls_inspection_configuration]])
		name!:                   string
		number_of_associations?: number
		tags?: [string]:     string
		tags_all?: [string]: string
		tls_inspection_configuration_id?: string
		update_token?:                    string
	})

	#timeouts: close({
		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		create?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		// Setting a timeout for a Delete operation is only applicable if
		// changes are saved into state before the destroy operation
		// occurs.
		delete?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
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
