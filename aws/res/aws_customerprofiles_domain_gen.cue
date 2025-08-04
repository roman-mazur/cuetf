package res

import "list"

#aws_customerprofiles_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_customerprofiles_domain")
	close({
		arn?:                     string
		dead_letter_queue_url?:   string
		default_encryption_key?:  string
		default_expiration_days!: number
		matching?: matchN(1, [#matching, list.MaxItems(1) & [...#matching]])
		domain_name!: string
		id?:          string
		region?:      string
		tags?: [string]:     string
		tags_all?: [string]: string
		rule_based_matching?: matchN(1, [#rule_based_matching, list.MaxItems(1) & [...#rule_based_matching]])
	})

	#matching: close({
		auto_merging?: matchN(1, [_#defs."/$defs/matching/$defs/auto_merging", list.MaxItems(1) & [..._#defs."/$defs/matching/$defs/auto_merging"]])
		exporting_config?: matchN(1, [_#defs."/$defs/matching/$defs/exporting_config", list.MaxItems(1) & [..._#defs."/$defs/matching/$defs/exporting_config"]])
		job_schedule?: matchN(1, [_#defs."/$defs/matching/$defs/job_schedule", list.MaxItems(1) & [..._#defs."/$defs/matching/$defs/job_schedule"]])
		enabled!: bool
	})

	#rule_based_matching: close({
		attribute_types_selector?: matchN(1, [_#defs."/$defs/rule_based_matching/$defs/attribute_types_selector", list.MaxItems(1) & [..._#defs."/$defs/rule_based_matching/$defs/attribute_types_selector"]])
		enabled!:                             bool
		max_allowed_rule_level_for_matching?: number
		max_allowed_rule_level_for_merging?:  number
		status?:                              string
		conflict_resolution?: matchN(1, [_#defs."/$defs/rule_based_matching/$defs/conflict_resolution", list.MaxItems(1) & [..._#defs."/$defs/rule_based_matching/$defs/conflict_resolution"]])
		exporting_config?: matchN(1, [_#defs."/$defs/rule_based_matching/$defs/exporting_config", list.MaxItems(1) & [..._#defs."/$defs/rule_based_matching/$defs/exporting_config"]])
		matching_rules?: matchN(1, [_#defs."/$defs/rule_based_matching/$defs/matching_rules", [..._#defs."/$defs/rule_based_matching/$defs/matching_rules"]])
	})

	_#defs: "/$defs/matching/$defs/auto_merging": close({
		conflict_resolution?: matchN(1, [_#defs."/$defs/matching/$defs/auto_merging/$defs/conflict_resolution", list.MaxItems(1) & [..._#defs."/$defs/matching/$defs/auto_merging/$defs/conflict_resolution"]])
		consolidation?: matchN(1, [_#defs."/$defs/matching/$defs/auto_merging/$defs/consolidation", list.MaxItems(1) & [..._#defs."/$defs/matching/$defs/auto_merging/$defs/consolidation"]])
		enabled!:                                  bool
		min_allowed_confidence_score_for_merging?: number
	})

	_#defs: "/$defs/matching/$defs/auto_merging/$defs/conflict_resolution": close({
		conflict_resolving_model!: string
		source_name?:              string
	})

	_#defs: "/$defs/matching/$defs/auto_merging/$defs/consolidation": close({
		matching_attributes_list!: [...[...string]]
	})

	_#defs: "/$defs/matching/$defs/exporting_config": close({
		s3_exporting?: matchN(1, [_#defs."/$defs/matching/$defs/exporting_config/$defs/s3_exporting", list.MaxItems(1) & [..._#defs."/$defs/matching/$defs/exporting_config/$defs/s3_exporting"]])
	})

	_#defs: "/$defs/matching/$defs/exporting_config/$defs/s3_exporting": close({
		s3_bucket_name!: string
		s3_key_name?:    string
	})

	_#defs: "/$defs/matching/$defs/job_schedule": close({
		day_of_the_week!: string
		time!:            string
	})

	_#defs: "/$defs/rule_based_matching/$defs/attribute_types_selector": close({
		address?: [...string]
		attribute_matching_model!: string
		email_address?: [...string]
		phone_number?: [...string]
	})

	_#defs: "/$defs/rule_based_matching/$defs/conflict_resolution": close({
		conflict_resolving_model!: string
		source_name?:              string
	})

	_#defs: "/$defs/rule_based_matching/$defs/exporting_config": close({
		s3_exporting?: matchN(1, [_#defs."/$defs/rule_based_matching/$defs/exporting_config/$defs/s3_exporting", list.MaxItems(1) & [..._#defs."/$defs/rule_based_matching/$defs/exporting_config/$defs/s3_exporting"]])
	})

	_#defs: "/$defs/rule_based_matching/$defs/exporting_config/$defs/s3_exporting": close({
		s3_bucket_name!: string
		s3_key_name?:    string
	})

	_#defs: "/$defs/rule_based_matching/$defs/matching_rules": close({
		rule!: [...string]
	})
}
