package res

aws_mailmanager_ingress_point: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_mailmanager_ingress_point")
	close({
		ingress_point_configuration?: matchN(1, [#ingress_point_configuration, [...#ingress_point_configuration]])
		network_configuration?: matchN(1, [#network_configuration, [...#network_configuration]])
		timeouts?: #timeouts
		a_record?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                 string
		arn?:                    string
		created_timestamp?:      string
		id?:                     string
		last_updated_timestamp?: string
		name!:                   string
		rule_set_id!:            string
		status?:                 string
		tags?: [string]:     string
		tags_all?: [string]: string
		tls_policy?:        string
		traffic_policy_id!: string
		type!:              string
	})

	#ingress_point_configuration: close({
		tls_auth_configuration?: matchN(1, [_#defs."/$defs/ingress_point_configuration/$defs/tls_auth_configuration", [..._#defs."/$defs/ingress_point_configuration/$defs/tls_auth_configuration"]])
		secret_arn?:               string
		smtp_password_wo?:         string
		smtp_password_wo_version?: number
	})

	#network_configuration: close({
		private_network_configuration?: matchN(1, [_#defs."/$defs/network_configuration/$defs/private_network_configuration", [..._#defs."/$defs/network_configuration/$defs/private_network_configuration"]])
		public_network_configuration?: matchN(1, [_#defs."/$defs/network_configuration/$defs/public_network_configuration", [..._#defs."/$defs/network_configuration/$defs/public_network_configuration"]])
	})

	#timeouts: close({
		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
		// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
		// "m" (minutes), "h" (hours).
		create?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
		// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
		// "m" (minutes), "h" (hours). Setting a timeout for a Delete operation is only
		// applicable if changes are saved into state before the destroy operation
		// occurs.
		delete?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
		// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
		// "m" (minutes), "h" (hours).
		update?: string
	})

	_#defs: "/$defs/ingress_point_configuration/$defs/tls_auth_configuration": close({
		trust_store?: matchN(1, [_#defs."/$defs/ingress_point_configuration/$defs/tls_auth_configuration/$defs/trust_store", [..._#defs."/$defs/ingress_point_configuration/$defs/tls_auth_configuration/$defs/trust_store"]])
	})

	_#defs: "/$defs/ingress_point_configuration/$defs/tls_auth_configuration/$defs/trust_store": close({
		ca_content!:  string
		crl_content?: string
		kms_key_arn?: string
	})

	_#defs: "/$defs/network_configuration/$defs/private_network_configuration": close({
		vpc_endpoint_id!: string
	})

	_#defs: "/$defs/network_configuration/$defs/public_network_configuration": close({
		ip_type!: string
	})
}
