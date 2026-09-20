package res

aws_agentregistry_registry: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_agentregistry_registry")
	close({
		approval_configuration?: matchN(1, [#approval_configuration, [...#approval_configuration]])
		auto_detection_configuration?: matchN(1, [#auto_detection_configuration, [...#auto_detection_configuration]])
		discovery_configuration?: matchN(1, [#discovery_configuration, [...#discovery_configuration]])
		encryption_configuration?: matchN(1, [#encryption_configuration, [...#encryption_configuration]])
		timeouts?:    #timeouts
		description?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:       string
		name!:         string
		registry_arn?: string
		registry_id?:  string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#approval_configuration: close({
		auto_approval_rules?: [...string]
	})

	#auto_detection_configuration: close({
		enabled!: bool
		scope!:   string
	})

	#discovery_configuration: close({
		authorizer_configuration?: matchN(1, [_#defs."/$defs/discovery_configuration/$defs/authorizer_configuration", [..._#defs."/$defs/discovery_configuration/$defs/authorizer_configuration"]])
		authorizer_type!: string
	})

	#encryption_configuration: close({
		kms_key_arn!: string
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

	_#defs: "/$defs/discovery_configuration/$defs/authorizer_configuration": close({
		custom_jwt_authorizer?: matchN(1, [_#defs."/$defs/discovery_configuration/$defs/authorizer_configuration/$defs/custom_jwt_authorizer", [..._#defs."/$defs/discovery_configuration/$defs/authorizer_configuration/$defs/custom_jwt_authorizer"]])
	})

	_#defs: "/$defs/discovery_configuration/$defs/authorizer_configuration/$defs/custom_jwt_authorizer": close({
		custom_claim?: matchN(1, [_#defs."/$defs/discovery_configuration/$defs/authorizer_configuration/$defs/custom_jwt_authorizer/$defs/custom_claim", [..._#defs."/$defs/discovery_configuration/$defs/authorizer_configuration/$defs/custom_jwt_authorizer/$defs/custom_claim"]])
		private_endpoint?: matchN(1, [_#defs."/$defs/discovery_configuration/$defs/authorizer_configuration/$defs/custom_jwt_authorizer/$defs/private_endpoint", [..._#defs."/$defs/discovery_configuration/$defs/authorizer_configuration/$defs/custom_jwt_authorizer/$defs/private_endpoint"]])
		private_endpoint_override?: matchN(1, [_#defs."/$defs/discovery_configuration/$defs/authorizer_configuration/$defs/custom_jwt_authorizer/$defs/private_endpoint_override", [..._#defs."/$defs/discovery_configuration/$defs/authorizer_configuration/$defs/custom_jwt_authorizer/$defs/private_endpoint_override"]])
		allowed_audience?: [...string]
		allowed_clients?: [...string]
		allowed_scopes?: [...string]
		discovery_url!: string
	})

	_#defs: "/$defs/discovery_configuration/$defs/authorizer_configuration/$defs/custom_jwt_authorizer/$defs/custom_claim": close({
		authorizing_claim_match_value?: matchN(1, [_#defs."/$defs/discovery_configuration/$defs/authorizer_configuration/$defs/custom_jwt_authorizer/$defs/custom_claim/$defs/authorizing_claim_match_value", [..._#defs."/$defs/discovery_configuration/$defs/authorizer_configuration/$defs/custom_jwt_authorizer/$defs/custom_claim/$defs/authorizing_claim_match_value"]])
		inbound_token_claim_name!:       string
		inbound_token_claim_value_type!: string
	})

	_#defs: "/$defs/discovery_configuration/$defs/authorizer_configuration/$defs/custom_jwt_authorizer/$defs/custom_claim/$defs/authorizing_claim_match_value": close({
		claim_match_value?: matchN(1, [_#defs."/$defs/discovery_configuration/$defs/authorizer_configuration/$defs/custom_jwt_authorizer/$defs/custom_claim/$defs/authorizing_claim_match_value/$defs/claim_match_value", [..._#defs."/$defs/discovery_configuration/$defs/authorizer_configuration/$defs/custom_jwt_authorizer/$defs/custom_claim/$defs/authorizing_claim_match_value/$defs/claim_match_value"]])
		claim_match_operator!: string
	})

	_#defs: "/$defs/discovery_configuration/$defs/authorizer_configuration/$defs/custom_jwt_authorizer/$defs/custom_claim/$defs/authorizing_claim_match_value/$defs/claim_match_value": close({
		match_value_string?: string
		match_value_string_list?: [...string]
	})

	_#defs: "/$defs/discovery_configuration/$defs/authorizer_configuration/$defs/custom_jwt_authorizer/$defs/private_endpoint": close({
		managed_vpc_resource?: matchN(1, [_#defs."/$defs/discovery_configuration/$defs/authorizer_configuration/$defs/custom_jwt_authorizer/$defs/private_endpoint/$defs/managed_vpc_resource", [..._#defs."/$defs/discovery_configuration/$defs/authorizer_configuration/$defs/custom_jwt_authorizer/$defs/private_endpoint/$defs/managed_vpc_resource"]])
		self_managed_lattice_resource?: matchN(1, [_#defs."/$defs/discovery_configuration/$defs/authorizer_configuration/$defs/custom_jwt_authorizer/$defs/private_endpoint/$defs/self_managed_lattice_resource", [..._#defs."/$defs/discovery_configuration/$defs/authorizer_configuration/$defs/custom_jwt_authorizer/$defs/private_endpoint/$defs/self_managed_lattice_resource"]])
	})

	_#defs: "/$defs/discovery_configuration/$defs/authorizer_configuration/$defs/custom_jwt_authorizer/$defs/private_endpoint/$defs/managed_vpc_resource": close({
		endpoint_ip_address_type!: string
		routing_domain?:           string
		security_group_ids?: [...string]
		subnet_ids!: [...string]
		tags?: [string]: string
		vpc_identifier!: string
	})

	_#defs: "/$defs/discovery_configuration/$defs/authorizer_configuration/$defs/custom_jwt_authorizer/$defs/private_endpoint/$defs/self_managed_lattice_resource": close({
		resource_configuration_identifier?: string
	})

	_#defs: "/$defs/discovery_configuration/$defs/authorizer_configuration/$defs/custom_jwt_authorizer/$defs/private_endpoint_override": close({
		private_endpoint?: matchN(1, [_#defs."/$defs/discovery_configuration/$defs/authorizer_configuration/$defs/custom_jwt_authorizer/$defs/private_endpoint_override/$defs/private_endpoint", [..._#defs."/$defs/discovery_configuration/$defs/authorizer_configuration/$defs/custom_jwt_authorizer/$defs/private_endpoint_override/$defs/private_endpoint"]])
		domain!: string
	})

	_#defs: "/$defs/discovery_configuration/$defs/authorizer_configuration/$defs/custom_jwt_authorizer/$defs/private_endpoint_override/$defs/private_endpoint": close({
		managed_vpc_resource?: matchN(1, [_#defs."/$defs/discovery_configuration/$defs/authorizer_configuration/$defs/custom_jwt_authorizer/$defs/private_endpoint_override/$defs/private_endpoint/$defs/managed_vpc_resource", [..._#defs."/$defs/discovery_configuration/$defs/authorizer_configuration/$defs/custom_jwt_authorizer/$defs/private_endpoint_override/$defs/private_endpoint/$defs/managed_vpc_resource"]])
		self_managed_lattice_resource?: matchN(1, [_#defs."/$defs/discovery_configuration/$defs/authorizer_configuration/$defs/custom_jwt_authorizer/$defs/private_endpoint_override/$defs/private_endpoint/$defs/self_managed_lattice_resource", [..._#defs."/$defs/discovery_configuration/$defs/authorizer_configuration/$defs/custom_jwt_authorizer/$defs/private_endpoint_override/$defs/private_endpoint/$defs/self_managed_lattice_resource"]])
	})

	_#defs: "/$defs/discovery_configuration/$defs/authorizer_configuration/$defs/custom_jwt_authorizer/$defs/private_endpoint_override/$defs/private_endpoint/$defs/managed_vpc_resource": close({
		endpoint_ip_address_type!: string
		routing_domain?:           string
		security_group_ids?: [...string]
		subnet_ids!: [...string]
		tags?: [string]: string
		vpc_identifier!: string
	})

	_#defs: "/$defs/discovery_configuration/$defs/authorizer_configuration/$defs/custom_jwt_authorizer/$defs/private_endpoint_override/$defs/private_endpoint/$defs/self_managed_lattice_resource": close({
		resource_configuration_identifier?: string
	})
}
