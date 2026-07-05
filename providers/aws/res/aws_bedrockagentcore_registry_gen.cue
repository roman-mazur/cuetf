package res

aws_bedrockagentcore_registry: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_bedrockagentcore_registry")
	close({
		authorizer_configuration?: matchN(1, [#authorizer_configuration, [...#authorizer_configuration]])
		timeouts?: #timeouts
		approval_configuration?: [...close({
			auto_approval?: bool
		})]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:          string
		authorizer_type?: string
		description?:     string
		name!:            string
		registry_arn?:    string
		registry_id?:     string
	})

	#authorizer_configuration: close({
		custom_jwt_authorizer?: matchN(1, [_#defs."/$defs/authorizer_configuration/$defs/custom_jwt_authorizer", [..._#defs."/$defs/authorizer_configuration/$defs/custom_jwt_authorizer"]])
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

	_#defs: "/$defs/authorizer_configuration/$defs/custom_jwt_authorizer": close({
		custom_claim?: matchN(1, [_#defs."/$defs/authorizer_configuration/$defs/custom_jwt_authorizer/$defs/custom_claim", [..._#defs."/$defs/authorizer_configuration/$defs/custom_jwt_authorizer/$defs/custom_claim"]])
		allowed_audience?: [...string]
		allowed_clients?: [...string]
		allowed_scopes?: [...string]
		discovery_url!: string
	})

	_#defs: "/$defs/authorizer_configuration/$defs/custom_jwt_authorizer/$defs/custom_claim": close({
		authorizing_claim_match_value?: matchN(1, [_#defs."/$defs/authorizer_configuration/$defs/custom_jwt_authorizer/$defs/custom_claim/$defs/authorizing_claim_match_value", [..._#defs."/$defs/authorizer_configuration/$defs/custom_jwt_authorizer/$defs/custom_claim/$defs/authorizing_claim_match_value"]])
		inbound_token_claim_name!:       string
		inbound_token_claim_value_type!: string
	})

	_#defs: "/$defs/authorizer_configuration/$defs/custom_jwt_authorizer/$defs/custom_claim/$defs/authorizing_claim_match_value": close({
		claim_match_value?: matchN(1, [_#defs."/$defs/authorizer_configuration/$defs/custom_jwt_authorizer/$defs/custom_claim/$defs/authorizing_claim_match_value/$defs/claim_match_value", [..._#defs."/$defs/authorizer_configuration/$defs/custom_jwt_authorizer/$defs/custom_claim/$defs/authorizing_claim_match_value/$defs/claim_match_value"]])
		claim_match_operator!: string
	})

	_#defs: "/$defs/authorizer_configuration/$defs/custom_jwt_authorizer/$defs/custom_claim/$defs/authorizing_claim_match_value/$defs/claim_match_value": close({
		match_value_string?: string
		match_value_string_list?: [...string]
	})
}
