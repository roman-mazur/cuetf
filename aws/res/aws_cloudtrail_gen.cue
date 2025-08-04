package res

import "list"

#aws_cloudtrail: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cloudtrail")
	close({
		arn?:                           string
		cloud_watch_logs_group_arn?:    string
		cloud_watch_logs_role_arn?:     string
		enable_log_file_validation?:    bool
		enable_logging?:                bool
		home_region?:                   string
		id?:                            string
		include_global_service_events?: bool
		is_multi_region_trail?:         bool
		is_organization_trail?:         bool
		kms_key_id?:                    string
		advanced_event_selector?: matchN(1, [#advanced_event_selector, [...#advanced_event_selector]])
		event_selector?: matchN(1, [#event_selector, list.MaxItems(5) & [...#event_selector]])
		name!:           string
		region?:         string
		s3_bucket_name!: string
		s3_key_prefix?:  string
		sns_topic_arn?:  string
		sns_topic_name?: string
		tags?: [string]: string
		insight_selector?: matchN(1, [#insight_selector, [...#insight_selector]])
		tags_all?: [string]: string
	})

	#advanced_event_selector: close({
		field_selector?: matchN(1, [_#defs."/$defs/advanced_event_selector/$defs/field_selector", [_, ...] & [..._#defs."/$defs/advanced_event_selector/$defs/field_selector"]])
		name?: string
	})

	#event_selector: close({
		data_resource?: matchN(1, [_#defs."/$defs/event_selector/$defs/data_resource", [..._#defs."/$defs/event_selector/$defs/data_resource"]])
		exclude_management_event_sources?: [...string]
		include_management_events?: bool
		read_write_type?:           string
	})

	#insight_selector: close({
		insight_type!: string
	})

	_#defs: "/$defs/advanced_event_selector/$defs/field_selector": close({
		ends_with?: [...string]
		equals?: [...string]
		field!: string
		not_ends_with?: [...string]
		not_equals?: [...string]
		not_starts_with?: [...string]
		starts_with?: [...string]
	})

	_#defs: "/$defs/event_selector/$defs/data_resource": close({
		type!: string
		values!: [...string]
	})
}
