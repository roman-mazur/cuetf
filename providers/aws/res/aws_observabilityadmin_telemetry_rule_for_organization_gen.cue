package res

#aws_observabilityadmin_telemetry_rule_for_organization: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_observabilityadmin_telemetry_rule_for_organization")
	close({
		rule?: matchN(1, [#rule, [...#rule]])
		timeouts?: #timeouts

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:    string
		rule_arn?:  string
		rule_name!: string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#rule: close({
		destination_configuration?: matchN(1, [_#defs."/$defs/rule/$defs/destination_configuration", [..._#defs."/$defs/rule/$defs/destination_configuration"]])
		all_regions?:         bool
		allow_field_updates?: bool
		regions?: [...string]
		resource_type?:      string
		scope?:              string
		selection_criteria?: string
		telemetry_source_types?: [...string]
		telemetry_type!: string
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

	_#defs: "/$defs/rule/$defs/destination_configuration": close({
		cloudtrail_parameters?: matchN(1, [_#defs."/$defs/rule/$defs/destination_configuration/$defs/cloudtrail_parameters", [..._#defs."/$defs/rule/$defs/destination_configuration/$defs/cloudtrail_parameters"]])
		elb_load_balancer_logging_parameters?: matchN(1, [_#defs."/$defs/rule/$defs/destination_configuration/$defs/elb_load_balancer_logging_parameters", [..._#defs."/$defs/rule/$defs/destination_configuration/$defs/elb_load_balancer_logging_parameters"]])
		log_delivery_parameters?: matchN(1, [_#defs."/$defs/rule/$defs/destination_configuration/$defs/log_delivery_parameters", [..._#defs."/$defs/rule/$defs/destination_configuration/$defs/log_delivery_parameters"]])
		msk_monitoring_parameters?: matchN(1, [_#defs."/$defs/rule/$defs/destination_configuration/$defs/msk_monitoring_parameters", [..._#defs."/$defs/rule/$defs/destination_configuration/$defs/msk_monitoring_parameters"]])
		vpc_flow_log_parameters?: matchN(1, [_#defs."/$defs/rule/$defs/destination_configuration/$defs/vpc_flow_log_parameters", [..._#defs."/$defs/rule/$defs/destination_configuration/$defs/vpc_flow_log_parameters"]])
		waf_logging_parameters?: matchN(1, [_#defs."/$defs/rule/$defs/destination_configuration/$defs/waf_logging_parameters", [..._#defs."/$defs/rule/$defs/destination_configuration/$defs/waf_logging_parameters"]])
		destination_pattern?: string
		destination_type?:    string
		retention_in_days?:   number
	})

	_#defs: "/$defs/rule/$defs/destination_configuration/$defs/cloudtrail_parameters": close({
		advanced_event_selectors?: matchN(1, [_#defs."/$defs/rule/$defs/destination_configuration/$defs/cloudtrail_parameters/$defs/advanced_event_selectors", [..._#defs."/$defs/rule/$defs/destination_configuration/$defs/cloudtrail_parameters/$defs/advanced_event_selectors"]])
	})

	_#defs: "/$defs/rule/$defs/destination_configuration/$defs/cloudtrail_parameters/$defs/advanced_event_selectors": close({
		field_selectors?: matchN(1, [_#defs."/$defs/rule/$defs/destination_configuration/$defs/cloudtrail_parameters/$defs/advanced_event_selectors/$defs/field_selectors", [..._#defs."/$defs/rule/$defs/destination_configuration/$defs/cloudtrail_parameters/$defs/advanced_event_selectors/$defs/field_selectors"]])
		name?: string
	})

	_#defs: "/$defs/rule/$defs/destination_configuration/$defs/cloudtrail_parameters/$defs/advanced_event_selectors/$defs/field_selectors": close({
		ends_with?: [...string]
		equals?: [...string]
		field!: string
		not_ends_with?: [...string]
		not_equals?: [...string]
		not_starts_with?: [...string]
		starts_with?: [...string]
	})

	_#defs: "/$defs/rule/$defs/destination_configuration/$defs/elb_load_balancer_logging_parameters": close({
		field_delimiter?: string
		output_format?:   string
	})

	_#defs: "/$defs/rule/$defs/destination_configuration/$defs/log_delivery_parameters": close({
		log_types?: [...string]
	})

	_#defs: "/$defs/rule/$defs/destination_configuration/$defs/msk_monitoring_parameters": close({
		enhanced_monitoring?: string
	})

	_#defs: "/$defs/rule/$defs/destination_configuration/$defs/vpc_flow_log_parameters": close({
		log_format?:               string
		max_aggregation_interval?: number
		traffic_type?:             string
	})

	_#defs: "/$defs/rule/$defs/destination_configuration/$defs/waf_logging_parameters": close({
		logging_filter?: matchN(1, [_#defs."/$defs/rule/$defs/destination_configuration/$defs/waf_logging_parameters/$defs/logging_filter", [..._#defs."/$defs/rule/$defs/destination_configuration/$defs/waf_logging_parameters/$defs/logging_filter"]])
		redacted_fields?: matchN(1, [_#defs."/$defs/rule/$defs/destination_configuration/$defs/waf_logging_parameters/$defs/redacted_fields", [..._#defs."/$defs/rule/$defs/destination_configuration/$defs/waf_logging_parameters/$defs/redacted_fields"]])
		log_type?: string
	})

	_#defs: "/$defs/rule/$defs/destination_configuration/$defs/waf_logging_parameters/$defs/logging_filter": close({
		filters?: matchN(1, [_#defs."/$defs/rule/$defs/destination_configuration/$defs/waf_logging_parameters/$defs/logging_filter/$defs/filters", [..._#defs."/$defs/rule/$defs/destination_configuration/$defs/waf_logging_parameters/$defs/logging_filter/$defs/filters"]])
		default_behavior?: string
	})

	_#defs: "/$defs/rule/$defs/destination_configuration/$defs/waf_logging_parameters/$defs/logging_filter/$defs/filters": close({
		conditions?: matchN(1, [_#defs."/$defs/rule/$defs/destination_configuration/$defs/waf_logging_parameters/$defs/logging_filter/$defs/filters/$defs/conditions", [..._#defs."/$defs/rule/$defs/destination_configuration/$defs/waf_logging_parameters/$defs/logging_filter/$defs/filters/$defs/conditions"]])
		behavior?:    string
		requirement?: string
	})

	_#defs: "/$defs/rule/$defs/destination_configuration/$defs/waf_logging_parameters/$defs/logging_filter/$defs/filters/$defs/conditions": close({
		action_condition?: matchN(1, [_#defs."/$defs/rule/$defs/destination_configuration/$defs/waf_logging_parameters/$defs/logging_filter/$defs/filters/$defs/conditions/$defs/action_condition", [..._#defs."/$defs/rule/$defs/destination_configuration/$defs/waf_logging_parameters/$defs/logging_filter/$defs/filters/$defs/conditions/$defs/action_condition"]])
		label_name_condition?: matchN(1, [_#defs."/$defs/rule/$defs/destination_configuration/$defs/waf_logging_parameters/$defs/logging_filter/$defs/filters/$defs/conditions/$defs/label_name_condition", [..._#defs."/$defs/rule/$defs/destination_configuration/$defs/waf_logging_parameters/$defs/logging_filter/$defs/filters/$defs/conditions/$defs/label_name_condition"]])
	})

	_#defs: "/$defs/rule/$defs/destination_configuration/$defs/waf_logging_parameters/$defs/logging_filter/$defs/filters/$defs/conditions/$defs/action_condition": close({
		action!: string
	})

	_#defs: "/$defs/rule/$defs/destination_configuration/$defs/waf_logging_parameters/$defs/logging_filter/$defs/filters/$defs/conditions/$defs/label_name_condition": close({
		label_name?: string
	})

	_#defs: "/$defs/rule/$defs/destination_configuration/$defs/waf_logging_parameters/$defs/redacted_fields": close({
		single_header?: matchN(1, [_#defs."/$defs/rule/$defs/destination_configuration/$defs/waf_logging_parameters/$defs/redacted_fields/$defs/single_header", [..._#defs."/$defs/rule/$defs/destination_configuration/$defs/waf_logging_parameters/$defs/redacted_fields/$defs/single_header"]])
		method?:       string
		query_string?: string
		uri_path?:     string
	})

	_#defs: "/$defs/rule/$defs/destination_configuration/$defs/waf_logging_parameters/$defs/redacted_fields/$defs/single_header": close({
		name!: string
	})
}
