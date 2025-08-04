package res

import "list"

#aws_wafv2_web_acl_logging_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_wafv2_web_acl_logging_configuration")
	close({
		id?: string

		// AWS Kinesis Firehose Delivery Stream ARNs
		log_destination_configs!: [...string]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string

		// AWS WebACL ARN
		resource_arn!: string
		logging_filter?: matchN(1, [#logging_filter, list.MaxItems(1) & [...#logging_filter]])
		redacted_fields?: matchN(1, [#redacted_fields, list.MaxItems(100) & [...#redacted_fields]])
	})

	#logging_filter: close({
		filter?: matchN(1, [_#defs."/$defs/logging_filter/$defs/filter", [_, ...] & [..._#defs."/$defs/logging_filter/$defs/filter"]])
		default_behavior!: string
	})

	#redacted_fields: close({
		method?: matchN(1, [_#defs."/$defs/redacted_fields/$defs/method", list.MaxItems(1) & [..._#defs."/$defs/redacted_fields/$defs/method"]])
		query_string?: matchN(1, [_#defs."/$defs/redacted_fields/$defs/query_string", list.MaxItems(1) & [..._#defs."/$defs/redacted_fields/$defs/query_string"]])
		single_header?: matchN(1, [_#defs."/$defs/redacted_fields/$defs/single_header", list.MaxItems(1) & [..._#defs."/$defs/redacted_fields/$defs/single_header"]])
		uri_path?: matchN(1, [_#defs."/$defs/redacted_fields/$defs/uri_path", list.MaxItems(1) & [..._#defs."/$defs/redacted_fields/$defs/uri_path"]])
	})

	_#defs: "/$defs/logging_filter/$defs/filter": close({
		condition?: matchN(1, [_#defs."/$defs/logging_filter/$defs/filter/$defs/condition", [_, ...] & [..._#defs."/$defs/logging_filter/$defs/filter/$defs/condition"]])
		behavior!:    string
		requirement!: string
	})

	_#defs: "/$defs/logging_filter/$defs/filter/$defs/condition": close({
		action_condition?: matchN(1, [_#defs."/$defs/logging_filter/$defs/filter/$defs/condition/$defs/action_condition", list.MaxItems(1) & [..._#defs."/$defs/logging_filter/$defs/filter/$defs/condition/$defs/action_condition"]])
		label_name_condition?: matchN(1, [_#defs."/$defs/logging_filter/$defs/filter/$defs/condition/$defs/label_name_condition", list.MaxItems(1) & [..._#defs."/$defs/logging_filter/$defs/filter/$defs/condition/$defs/label_name_condition"]])
	})

	_#defs: "/$defs/logging_filter/$defs/filter/$defs/condition/$defs/action_condition": close({
		action!: string
	})

	_#defs: "/$defs/logging_filter/$defs/filter/$defs/condition/$defs/label_name_condition": close({
		label_name!: string
	})

	_#defs: "/$defs/redacted_fields/$defs/method": close({})

	_#defs: "/$defs/redacted_fields/$defs/query_string": close({})

	_#defs: "/$defs/redacted_fields/$defs/single_header": close({
		name!: string
	})

	_#defs: "/$defs/redacted_fields/$defs/uri_path": close({})
}
