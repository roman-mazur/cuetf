package res

#aws_cloudtrail_event_data_store: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_cloudtrail_event_data_store")
	arn?:                  string
	id?:                   string
	kms_key_id?:           string
	multi_region_enabled?: bool
	name:                  string
	organization_enabled?: bool
	retention_period?:     number
	tags?: [string]: string
	tags_all?: [string]: string
	termination_protection_enabled?: bool
	advanced_event_selector?:        #advanced_event_selector | [...#advanced_event_selector]
	timeouts?:                       #timeouts

	#advanced_event_selector: {
		name?:           string
		field_selector?: #advanced_event_selector.#field_selector | [...#advanced_event_selector.#field_selector]

		#field_selector: {
			ends_with?: [...string]
			equals?: [...string]
			field?: string
			not_ends_with?: [...string]
			not_equals?: [...string]
			not_starts_with?: [...string]
			starts_with?: [...string]
		}
	}

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
