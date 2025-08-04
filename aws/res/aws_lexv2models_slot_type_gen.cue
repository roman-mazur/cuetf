package res

#aws_lexv2models_slot_type: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lexv2models_slot_type")
	close({
		bot_id!:      string
		bot_version!: string
		description?: string
		id?:          string
		locale_id!:   string
		composite_slot_type_setting?: matchN(1, [#composite_slot_type_setting, [...#composite_slot_type_setting]])
		name!:                       string
		parent_slot_type_signature?: string
		external_source_setting?: matchN(1, [#external_source_setting, [...#external_source_setting]])
		slot_type_values?: matchN(1, [#slot_type_values, [...#slot_type_values]])
		region?:   string
		timeouts?: #timeouts
		value_selection_setting?: matchN(1, [#value_selection_setting, [...#value_selection_setting]])
		slot_type_id?: string
	})

	#composite_slot_type_setting: close({
		sub_slots?: matchN(1, [_#defs."/$defs/composite_slot_type_setting/$defs/sub_slots", [..._#defs."/$defs/composite_slot_type_setting/$defs/sub_slots"]])
	})

	#external_source_setting: close({
		grammar_slot_type_setting?: matchN(1, [_#defs."/$defs/external_source_setting/$defs/grammar_slot_type_setting", [..._#defs."/$defs/external_source_setting/$defs/grammar_slot_type_setting"]])
	})

	#slot_type_values: close({
		sample_value?: matchN(1, [_#defs."/$defs/slot_type_values/$defs/sample_value", [..._#defs."/$defs/slot_type_values/$defs/sample_value"]])
		synonyms?: matchN(1, [_#defs."/$defs/slot_type_values/$defs/synonyms", [..._#defs."/$defs/slot_type_values/$defs/synonyms"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#value_selection_setting: close({
		advanced_recognition_setting?: matchN(1, [_#defs."/$defs/value_selection_setting/$defs/advanced_recognition_setting", [..._#defs."/$defs/value_selection_setting/$defs/advanced_recognition_setting"]])
		regex_filter?: matchN(1, [_#defs."/$defs/value_selection_setting/$defs/regex_filter", [..._#defs."/$defs/value_selection_setting/$defs/regex_filter"]])
		resolution_strategy!: string
	})

	_#defs: "/$defs/composite_slot_type_setting/$defs/sub_slots": close({
		name!:         string
		slot_type_id!: string
	})

	_#defs: "/$defs/external_source_setting/$defs/grammar_slot_type_setting": close({
		source?: matchN(1, [_#defs."/$defs/external_source_setting/$defs/grammar_slot_type_setting/$defs/source", [..._#defs."/$defs/external_source_setting/$defs/grammar_slot_type_setting/$defs/source"]])
	})

	_#defs: "/$defs/external_source_setting/$defs/grammar_slot_type_setting/$defs/source": close({
		kms_key_arn!:    string
		s3_bucket_name!: string
		s3_object_key!:  string
	})

	_#defs: "/$defs/slot_type_values/$defs/sample_value": close({
		value!: string
	})

	_#defs: "/$defs/slot_type_values/$defs/synonyms": close({
		value!: string
	})

	_#defs: "/$defs/value_selection_setting/$defs/advanced_recognition_setting": close({
		audio_recognition_strategy?: string
	})

	_#defs: "/$defs/value_selection_setting/$defs/regex_filter": close({
		pattern!: string
	})
}
