package res

#aws_bedrockagentcore_gateway_target: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_bedrockagentcore_gateway_target")
	close({
		description?:        string
		gateway_identifier!: string
		name!:               string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		credential_provider_configuration?: matchN(1, [#credential_provider_configuration, [...#credential_provider_configuration]])
		target_id?: string
		target_configuration?: matchN(1, [#target_configuration, [...#target_configuration]])
		timeouts?: #timeouts
	})

	#credential_provider_configuration: close({
		api_key?: matchN(1, [_#defs."/$defs/credential_provider_configuration/$defs/api_key", [..._#defs."/$defs/credential_provider_configuration/$defs/api_key"]])
		gateway_iam_role?: matchN(1, [_#defs."/$defs/credential_provider_configuration/$defs/gateway_iam_role", [..._#defs."/$defs/credential_provider_configuration/$defs/gateway_iam_role"]])
		oauth?: matchN(1, [_#defs."/$defs/credential_provider_configuration/$defs/oauth", [..._#defs."/$defs/credential_provider_configuration/$defs/oauth"]])
	})

	#target_configuration: close({
		mcp?: matchN(1, [_#defs."/$defs/target_configuration/$defs/mcp", [..._#defs."/$defs/target_configuration/$defs/mcp"]])
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

	_#defs: "/$defs/credential_provider_configuration/$defs/api_key": close({
		credential_location?:       string
		credential_parameter_name?: string
		credential_prefix?:         string
		provider_arn!:              string
	})

	_#defs: "/$defs/credential_provider_configuration/$defs/gateway_iam_role": close({})

	_#defs: "/$defs/credential_provider_configuration/$defs/oauth": close({
		custom_parameters?: [string]: string
		provider_arn!: string
		scopes!: [...string]
	})

	_#defs: "/$defs/target_configuration/$defs/mcp": close({
		lambda?: matchN(1, [_#defs."/$defs/target_configuration/$defs/mcp/$defs/lambda", [..._#defs."/$defs/target_configuration/$defs/mcp/$defs/lambda"]])
		open_api_schema?: matchN(1, [_#defs."/$defs/target_configuration/$defs/mcp/$defs/open_api_schema", [..._#defs."/$defs/target_configuration/$defs/mcp/$defs/open_api_schema"]])
		smithy_model?: matchN(1, [_#defs."/$defs/target_configuration/$defs/mcp/$defs/smithy_model", [..._#defs."/$defs/target_configuration/$defs/mcp/$defs/smithy_model"]])
	})

	_#defs: "/$defs/target_configuration/$defs/mcp/$defs/lambda": close({
		tool_schema?: matchN(1, [_#defs."/$defs/target_configuration/$defs/mcp/$defs/lambda/$defs/tool_schema", [..._#defs."/$defs/target_configuration/$defs/mcp/$defs/lambda/$defs/tool_schema"]])
		lambda_arn!: string
	})

	_#defs: "/$defs/target_configuration/$defs/mcp/$defs/lambda/$defs/tool_schema": close({
		inline_payload?: matchN(1, [_#defs."/$defs/target_configuration/$defs/mcp/$defs/lambda/$defs/tool_schema/$defs/inline_payload", [..._#defs."/$defs/target_configuration/$defs/mcp/$defs/lambda/$defs/tool_schema/$defs/inline_payload"]])
		s3?: matchN(1, [_#defs."/$defs/target_configuration/$defs/mcp/$defs/lambda/$defs/tool_schema/$defs/s3", [..._#defs."/$defs/target_configuration/$defs/mcp/$defs/lambda/$defs/tool_schema/$defs/s3"]])
	})

	_#defs: "/$defs/target_configuration/$defs/mcp/$defs/lambda/$defs/tool_schema/$defs/inline_payload": close({
		input_schema?: matchN(1, [_#defs."/$defs/target_configuration/$defs/mcp/$defs/lambda/$defs/tool_schema/$defs/inline_payload/$defs/input_schema", [..._#defs."/$defs/target_configuration/$defs/mcp/$defs/lambda/$defs/tool_schema/$defs/inline_payload/$defs/input_schema"]])
		output_schema?: matchN(1, [_#defs."/$defs/target_configuration/$defs/mcp/$defs/lambda/$defs/tool_schema/$defs/inline_payload/$defs/output_schema", [..._#defs."/$defs/target_configuration/$defs/mcp/$defs/lambda/$defs/tool_schema/$defs/inline_payload/$defs/output_schema"]])
		description!: string
		name!:        string
	})

	_#defs: "/$defs/target_configuration/$defs/mcp/$defs/lambda/$defs/tool_schema/$defs/inline_payload/$defs/input_schema": close({
		items?: matchN(1, [_#defs."/$defs/target_configuration/$defs/mcp/$defs/lambda/$defs/tool_schema/$defs/inline_payload/$defs/input_schema/$defs/items", [..._#defs."/$defs/target_configuration/$defs/mcp/$defs/lambda/$defs/tool_schema/$defs/inline_payload/$defs/input_schema/$defs/items"]])
		property?: matchN(1, [_#defs."/$defs/target_configuration/$defs/mcp/$defs/lambda/$defs/tool_schema/$defs/inline_payload/$defs/input_schema/$defs/property", [..._#defs."/$defs/target_configuration/$defs/mcp/$defs/lambda/$defs/tool_schema/$defs/inline_payload/$defs/input_schema/$defs/property"]])
		description?: string
		type!:        string
	})

	_#defs: "/$defs/target_configuration/$defs/mcp/$defs/lambda/$defs/tool_schema/$defs/inline_payload/$defs/input_schema/$defs/items": close({
		items?: matchN(1, [_#defs."/$defs/target_configuration/$defs/mcp/$defs/lambda/$defs/tool_schema/$defs/inline_payload/$defs/input_schema/$defs/items/$defs/items", [..._#defs."/$defs/target_configuration/$defs/mcp/$defs/lambda/$defs/tool_schema/$defs/inline_payload/$defs/input_schema/$defs/items/$defs/items"]])
		property?: matchN(1, [_#defs."/$defs/target_configuration/$defs/mcp/$defs/lambda/$defs/tool_schema/$defs/inline_payload/$defs/input_schema/$defs/items/$defs/property", [..._#defs."/$defs/target_configuration/$defs/mcp/$defs/lambda/$defs/tool_schema/$defs/inline_payload/$defs/input_schema/$defs/items/$defs/property"]])
		description?: string
		type!:        string
	})

	_#defs: "/$defs/target_configuration/$defs/mcp/$defs/lambda/$defs/tool_schema/$defs/inline_payload/$defs/input_schema/$defs/items/$defs/items": close({
		description?:     string
		items_json?:      string
		properties_json?: string
		type!:            string
	})

	_#defs: "/$defs/target_configuration/$defs/mcp/$defs/lambda/$defs/tool_schema/$defs/inline_payload/$defs/input_schema/$defs/items/$defs/property": close({
		description?:     string
		items_json?:      string
		name!:            string
		properties_json?: string
		required?:        bool
		type!:            string
	})

	_#defs: "/$defs/target_configuration/$defs/mcp/$defs/lambda/$defs/tool_schema/$defs/inline_payload/$defs/input_schema/$defs/property": close({
		items?: matchN(1, [_#defs."/$defs/target_configuration/$defs/mcp/$defs/lambda/$defs/tool_schema/$defs/inline_payload/$defs/input_schema/$defs/property/$defs/items", [..._#defs."/$defs/target_configuration/$defs/mcp/$defs/lambda/$defs/tool_schema/$defs/inline_payload/$defs/input_schema/$defs/property/$defs/items"]])
		description?: string
		name!:        string
		required?:    bool
		type!:        string
		property?: matchN(1, [_#defs."/$defs/target_configuration/$defs/mcp/$defs/lambda/$defs/tool_schema/$defs/inline_payload/$defs/input_schema/$defs/property/$defs/property", [..._#defs."/$defs/target_configuration/$defs/mcp/$defs/lambda/$defs/tool_schema/$defs/inline_payload/$defs/input_schema/$defs/property/$defs/property"]])
	})

	_#defs: "/$defs/target_configuration/$defs/mcp/$defs/lambda/$defs/tool_schema/$defs/inline_payload/$defs/input_schema/$defs/property/$defs/items": close({
		items?: matchN(1, [_#defs."/$defs/target_configuration/$defs/mcp/$defs/lambda/$defs/tool_schema/$defs/inline_payload/$defs/input_schema/$defs/property/$defs/items/$defs/items", [..._#defs."/$defs/target_configuration/$defs/mcp/$defs/lambda/$defs/tool_schema/$defs/inline_payload/$defs/input_schema/$defs/property/$defs/items/$defs/items"]])
		property?: matchN(1, [_#defs."/$defs/target_configuration/$defs/mcp/$defs/lambda/$defs/tool_schema/$defs/inline_payload/$defs/input_schema/$defs/property/$defs/items/$defs/property", [..._#defs."/$defs/target_configuration/$defs/mcp/$defs/lambda/$defs/tool_schema/$defs/inline_payload/$defs/input_schema/$defs/property/$defs/items/$defs/property"]])
		description?: string
		type!:        string
	})

	_#defs: "/$defs/target_configuration/$defs/mcp/$defs/lambda/$defs/tool_schema/$defs/inline_payload/$defs/input_schema/$defs/property/$defs/items/$defs/items": close({
		description?:     string
		items_json?:      string
		properties_json?: string
		type!:            string
	})

	_#defs: "/$defs/target_configuration/$defs/mcp/$defs/lambda/$defs/tool_schema/$defs/inline_payload/$defs/input_schema/$defs/property/$defs/items/$defs/property": close({
		description?:     string
		items_json?:      string
		name!:            string
		properties_json?: string
		required?:        bool
		type!:            string
	})

	_#defs: "/$defs/target_configuration/$defs/mcp/$defs/lambda/$defs/tool_schema/$defs/inline_payload/$defs/input_schema/$defs/property/$defs/property": close({
		description?:     string
		items_json?:      string
		name!:            string
		properties_json?: string
		required?:        bool
		type!:            string
	})

	_#defs: "/$defs/target_configuration/$defs/mcp/$defs/lambda/$defs/tool_schema/$defs/inline_payload/$defs/output_schema": close({
		items?: matchN(1, [_#defs."/$defs/target_configuration/$defs/mcp/$defs/lambda/$defs/tool_schema/$defs/inline_payload/$defs/output_schema/$defs/items", [..._#defs."/$defs/target_configuration/$defs/mcp/$defs/lambda/$defs/tool_schema/$defs/inline_payload/$defs/output_schema/$defs/items"]])
		property?: matchN(1, [_#defs."/$defs/target_configuration/$defs/mcp/$defs/lambda/$defs/tool_schema/$defs/inline_payload/$defs/output_schema/$defs/property", [..._#defs."/$defs/target_configuration/$defs/mcp/$defs/lambda/$defs/tool_schema/$defs/inline_payload/$defs/output_schema/$defs/property"]])
		description?: string
		type!:        string
	})

	_#defs: "/$defs/target_configuration/$defs/mcp/$defs/lambda/$defs/tool_schema/$defs/inline_payload/$defs/output_schema/$defs/items": close({
		items?: matchN(1, [_#defs."/$defs/target_configuration/$defs/mcp/$defs/lambda/$defs/tool_schema/$defs/inline_payload/$defs/output_schema/$defs/items/$defs/items", [..._#defs."/$defs/target_configuration/$defs/mcp/$defs/lambda/$defs/tool_schema/$defs/inline_payload/$defs/output_schema/$defs/items/$defs/items"]])
		property?: matchN(1, [_#defs."/$defs/target_configuration/$defs/mcp/$defs/lambda/$defs/tool_schema/$defs/inline_payload/$defs/output_schema/$defs/items/$defs/property", [..._#defs."/$defs/target_configuration/$defs/mcp/$defs/lambda/$defs/tool_schema/$defs/inline_payload/$defs/output_schema/$defs/items/$defs/property"]])
		description?: string
		type!:        string
	})

	_#defs: "/$defs/target_configuration/$defs/mcp/$defs/lambda/$defs/tool_schema/$defs/inline_payload/$defs/output_schema/$defs/items/$defs/items": close({
		description?:     string
		items_json?:      string
		properties_json?: string
		type!:            string
	})

	_#defs: "/$defs/target_configuration/$defs/mcp/$defs/lambda/$defs/tool_schema/$defs/inline_payload/$defs/output_schema/$defs/items/$defs/property": close({
		description?:     string
		items_json?:      string
		name!:            string
		properties_json?: string
		required?:        bool
		type!:            string
	})

	_#defs: "/$defs/target_configuration/$defs/mcp/$defs/lambda/$defs/tool_schema/$defs/inline_payload/$defs/output_schema/$defs/property": close({
		items?: matchN(1, [_#defs."/$defs/target_configuration/$defs/mcp/$defs/lambda/$defs/tool_schema/$defs/inline_payload/$defs/output_schema/$defs/property/$defs/items", [..._#defs."/$defs/target_configuration/$defs/mcp/$defs/lambda/$defs/tool_schema/$defs/inline_payload/$defs/output_schema/$defs/property/$defs/items"]])
		description?: string
		name!:        string
		required?:    bool
		type!:        string
		property?: matchN(1, [_#defs."/$defs/target_configuration/$defs/mcp/$defs/lambda/$defs/tool_schema/$defs/inline_payload/$defs/output_schema/$defs/property/$defs/property", [..._#defs."/$defs/target_configuration/$defs/mcp/$defs/lambda/$defs/tool_schema/$defs/inline_payload/$defs/output_schema/$defs/property/$defs/property"]])
	})

	_#defs: "/$defs/target_configuration/$defs/mcp/$defs/lambda/$defs/tool_schema/$defs/inline_payload/$defs/output_schema/$defs/property/$defs/items": close({
		items?: matchN(1, [_#defs."/$defs/target_configuration/$defs/mcp/$defs/lambda/$defs/tool_schema/$defs/inline_payload/$defs/output_schema/$defs/property/$defs/items/$defs/items", [..._#defs."/$defs/target_configuration/$defs/mcp/$defs/lambda/$defs/tool_schema/$defs/inline_payload/$defs/output_schema/$defs/property/$defs/items/$defs/items"]])
		property?: matchN(1, [_#defs."/$defs/target_configuration/$defs/mcp/$defs/lambda/$defs/tool_schema/$defs/inline_payload/$defs/output_schema/$defs/property/$defs/items/$defs/property", [..._#defs."/$defs/target_configuration/$defs/mcp/$defs/lambda/$defs/tool_schema/$defs/inline_payload/$defs/output_schema/$defs/property/$defs/items/$defs/property"]])
		description?: string
		type!:        string
	})

	_#defs: "/$defs/target_configuration/$defs/mcp/$defs/lambda/$defs/tool_schema/$defs/inline_payload/$defs/output_schema/$defs/property/$defs/items/$defs/items": close({
		description?:     string
		items_json?:      string
		properties_json?: string
		type!:            string
	})

	_#defs: "/$defs/target_configuration/$defs/mcp/$defs/lambda/$defs/tool_schema/$defs/inline_payload/$defs/output_schema/$defs/property/$defs/items/$defs/property": close({
		description?:     string
		items_json?:      string
		name!:            string
		properties_json?: string
		required?:        bool
		type!:            string
	})

	_#defs: "/$defs/target_configuration/$defs/mcp/$defs/lambda/$defs/tool_schema/$defs/inline_payload/$defs/output_schema/$defs/property/$defs/property": close({
		description?:     string
		items_json?:      string
		name!:            string
		properties_json?: string
		required?:        bool
		type!:            string
	})

	_#defs: "/$defs/target_configuration/$defs/mcp/$defs/lambda/$defs/tool_schema/$defs/s3": close({
		bucket_owner_account_id?: string
		uri?:                     string
	})

	_#defs: "/$defs/target_configuration/$defs/mcp/$defs/open_api_schema": close({
		inline_payload?: matchN(1, [_#defs."/$defs/target_configuration/$defs/mcp/$defs/open_api_schema/$defs/inline_payload", [..._#defs."/$defs/target_configuration/$defs/mcp/$defs/open_api_schema/$defs/inline_payload"]])
		s3?: matchN(1, [_#defs."/$defs/target_configuration/$defs/mcp/$defs/open_api_schema/$defs/s3", [..._#defs."/$defs/target_configuration/$defs/mcp/$defs/open_api_schema/$defs/s3"]])
	})

	_#defs: "/$defs/target_configuration/$defs/mcp/$defs/open_api_schema/$defs/inline_payload": close({
		payload!: string
	})

	_#defs: "/$defs/target_configuration/$defs/mcp/$defs/open_api_schema/$defs/s3": close({
		bucket_owner_account_id?: string
		uri?:                     string
	})

	_#defs: "/$defs/target_configuration/$defs/mcp/$defs/smithy_model": close({
		inline_payload?: matchN(1, [_#defs."/$defs/target_configuration/$defs/mcp/$defs/smithy_model/$defs/inline_payload", [..._#defs."/$defs/target_configuration/$defs/mcp/$defs/smithy_model/$defs/inline_payload"]])
		s3?: matchN(1, [_#defs."/$defs/target_configuration/$defs/mcp/$defs/smithy_model/$defs/s3", [..._#defs."/$defs/target_configuration/$defs/mcp/$defs/smithy_model/$defs/s3"]])
	})

	_#defs: "/$defs/target_configuration/$defs/mcp/$defs/smithy_model/$defs/inline_payload": close({
		payload!: string
	})

	_#defs: "/$defs/target_configuration/$defs/mcp/$defs/smithy_model/$defs/s3": close({
		bucket_owner_account_id?: string
		uri?:                     string
	})
}
