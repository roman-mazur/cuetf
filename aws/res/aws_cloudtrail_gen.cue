package res

import "list"

#aws_cloudtrail: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_cloudtrail")
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
	name!:                          string
	s3_bucket_name!:                string
	s3_key_prefix?:                 string
	sns_topic_name?:                string
	tags?: [string]:     string
	tags_all?: [string]: string
	advanced_event_selector?: #advanced_event_selector | [...#advanced_event_selector]
	event_selector?: #event_selector | list.MaxItems(5) & [...#event_selector]
	insight_selector?: #insight_selector | [...#insight_selector]

	#advanced_event_selector: {
		name?: string
		field_selector?: #advanced_event_selector.#field_selector | [_, ...] & [...#advanced_event_selector.#field_selector]

		#field_selector: {
			ends_with?: [...string]
			equals?: [...string]
			field!: string
			not_ends_with?: [...string]
			not_equals?: [...string]
			not_starts_with?: [...string]
			starts_with?: [...string]
		}
	}

	#event_selector: {
		exclude_management_event_sources?: [...string]
		include_management_events?: bool
		read_write_type?:           string
		data_resource?: #event_selector.#data_resource | [...#event_selector.#data_resource]

		#data_resource: {
			type!: string
			values!: [...string]
		}
	}

	#insight_selector: insight_type!: string
}
