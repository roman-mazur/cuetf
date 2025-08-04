package res

#aws_cloudtrail_event_data_store: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cloudtrail_event_data_store")
	close({
		arn?: string
		advanced_event_selector?: matchN(1, [#advanced_event_selector, [...#advanced_event_selector]])
		billing_mode?:         string
		id?:                   string
		kms_key_id?:           string
		multi_region_enabled?: bool
		name!:                 string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:               string
		timeouts?:             #timeouts
		organization_enabled?: bool
		retention_period?:     number
		suspend?:              string
		tags?: [string]:     string
		tags_all?: [string]: string
		termination_protection_enabled?: bool
	})

	#advanced_event_selector: close({
		field_selector?: matchN(1, [_#defs."/$defs/advanced_event_selector/$defs/field_selector", [..._#defs."/$defs/advanced_event_selector/$defs/field_selector"]])
		name?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/advanced_event_selector/$defs/field_selector": close({
		ends_with?: [...string]
		equals?: [...string]
		field?: string
		not_ends_with?: [...string]
		not_equals?: [...string]
		not_starts_with?: [...string]
		starts_with?: [...string]
	})
}
