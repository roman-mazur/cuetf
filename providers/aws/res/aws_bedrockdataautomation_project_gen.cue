package res

aws_bedrockdataautomation_project: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_bedrockdataautomation_project")
	close({
		custom_output_configuration?: matchN(1, [#custom_output_configuration, [...#custom_output_configuration]])
		data_automation_library_configuration?: matchN(1, [#data_automation_library_configuration, [...#data_automation_library_configuration]])
		encryption_configuration?: matchN(1, [#encryption_configuration, [...#encryption_configuration]])
		override_configuration?: matchN(1, [#override_configuration, [...#override_configuration]])
		standard_output_configuration?: matchN(1, [#standard_output_configuration, [...#standard_output_configuration]])
		timeouts?: #timeouts
		arn?:      string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:             string
		creation_time?:      string
		description?:        string
		last_modified_time?: string
		name!:               string
		project_stage?:      string
		status?:             string
		tags?: [string]:     string
		tags_all?: [string]: string
		type?: string
	})

	#custom_output_configuration: close({
		blueprint?: matchN(1, [_#defs."/$defs/custom_output_configuration/$defs/blueprint", [..._#defs."/$defs/custom_output_configuration/$defs/blueprint"]])
		document?: matchN(1, [_#defs."/$defs/custom_output_configuration/$defs/document", [..._#defs."/$defs/custom_output_configuration/$defs/document"]])
	})

	#data_automation_library_configuration: close({
		library?: matchN(1, [_#defs."/$defs/data_automation_library_configuration/$defs/library", [..._#defs."/$defs/data_automation_library_configuration/$defs/library"]])
	})

	#encryption_configuration: close({
		kms_encryption_context?: [string]: string
		kms_key_id!: string
	})

	#override_configuration: close({
		audio?: matchN(1, [_#defs."/$defs/override_configuration/$defs/audio", [..._#defs."/$defs/override_configuration/$defs/audio"]])
		document?: matchN(1, [_#defs."/$defs/override_configuration/$defs/document", [..._#defs."/$defs/override_configuration/$defs/document"]])
		image?: matchN(1, [_#defs."/$defs/override_configuration/$defs/image", [..._#defs."/$defs/override_configuration/$defs/image"]])
		modality_routing?: matchN(1, [_#defs."/$defs/override_configuration/$defs/modality_routing", [..._#defs."/$defs/override_configuration/$defs/modality_routing"]])
		video?: matchN(1, [_#defs."/$defs/override_configuration/$defs/video", [..._#defs."/$defs/override_configuration/$defs/video"]])
	})

	#standard_output_configuration: close({
		audio?: matchN(1, [_#defs."/$defs/standard_output_configuration/$defs/audio", [..._#defs."/$defs/standard_output_configuration/$defs/audio"]])
		document?: matchN(1, [_#defs."/$defs/standard_output_configuration/$defs/document", [..._#defs."/$defs/standard_output_configuration/$defs/document"]])
		image?: matchN(1, [_#defs."/$defs/standard_output_configuration/$defs/image", [..._#defs."/$defs/standard_output_configuration/$defs/image"]])
		video?: matchN(1, [_#defs."/$defs/standard_output_configuration/$defs/video", [..._#defs."/$defs/standard_output_configuration/$defs/video"]])
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

	_#defs: "/$defs/custom_output_configuration/$defs/blueprint": close({
		blueprint_arn!:     string
		blueprint_stage?:   string
		blueprint_version?: string
	})

	_#defs: "/$defs/custom_output_configuration/$defs/document": close({
		fallback_blueprint?: matchN(1, [_#defs."/$defs/custom_output_configuration/$defs/document/$defs/fallback_blueprint", [..._#defs."/$defs/custom_output_configuration/$defs/document/$defs/fallback_blueprint"]])
	})

	_#defs: "/$defs/custom_output_configuration/$defs/document/$defs/fallback_blueprint": close({
		blueprint_arn!:     string
		blueprint_stage?:   string
		blueprint_version?: string
	})

	_#defs: "/$defs/data_automation_library_configuration/$defs/library": close({
		library_arn!: string
	})

	_#defs: "/$defs/override_configuration/$defs/audio": close({
		language_configuration?: matchN(1, [_#defs."/$defs/override_configuration/$defs/audio/$defs/language_configuration", [..._#defs."/$defs/override_configuration/$defs/audio/$defs/language_configuration"]])
		modality_processing?: matchN(1, [_#defs."/$defs/override_configuration/$defs/audio/$defs/modality_processing", [..._#defs."/$defs/override_configuration/$defs/audio/$defs/modality_processing"]])
		sensitive_data_configuration?: matchN(1, [_#defs."/$defs/override_configuration/$defs/audio/$defs/sensitive_data_configuration", [..._#defs."/$defs/override_configuration/$defs/audio/$defs/sensitive_data_configuration"]])
	})

	_#defs: "/$defs/override_configuration/$defs/audio/$defs/language_configuration": close({
		generative_output_language?:  string
		identify_multiple_languages?: bool
		input_languages?: [...string]
	})

	_#defs: "/$defs/override_configuration/$defs/audio/$defs/modality_processing": close({
		state!: string
	})

	_#defs: "/$defs/override_configuration/$defs/audio/$defs/sensitive_data_configuration": close({
		pii_entities_configuration?: matchN(1, [_#defs."/$defs/override_configuration/$defs/audio/$defs/sensitive_data_configuration/$defs/pii_entities_configuration", [..._#defs."/$defs/override_configuration/$defs/audio/$defs/sensitive_data_configuration/$defs/pii_entities_configuration"]])
		detection_mode!: string
		detection_scope?: [...string]
	})

	_#defs: "/$defs/override_configuration/$defs/audio/$defs/sensitive_data_configuration/$defs/pii_entities_configuration": close({
		pii_entity_types?: [...string]
		redaction_mask_mode?: string
	})

	_#defs: "/$defs/override_configuration/$defs/document": close({
		modality_processing?: matchN(1, [_#defs."/$defs/override_configuration/$defs/document/$defs/modality_processing", [..._#defs."/$defs/override_configuration/$defs/document/$defs/modality_processing"]])
		sensitive_data_configuration?: matchN(1, [_#defs."/$defs/override_configuration/$defs/document/$defs/sensitive_data_configuration", [..._#defs."/$defs/override_configuration/$defs/document/$defs/sensitive_data_configuration"]])
		splitter?: matchN(1, [_#defs."/$defs/override_configuration/$defs/document/$defs/splitter", [..._#defs."/$defs/override_configuration/$defs/document/$defs/splitter"]])
	})

	_#defs: "/$defs/override_configuration/$defs/document/$defs/modality_processing": close({
		state!: string
	})

	_#defs: "/$defs/override_configuration/$defs/document/$defs/sensitive_data_configuration": close({
		pii_entities_configuration?: matchN(1, [_#defs."/$defs/override_configuration/$defs/document/$defs/sensitive_data_configuration/$defs/pii_entities_configuration", [..._#defs."/$defs/override_configuration/$defs/document/$defs/sensitive_data_configuration/$defs/pii_entities_configuration"]])
		detection_mode!: string
		detection_scope?: [...string]
	})

	_#defs: "/$defs/override_configuration/$defs/document/$defs/sensitive_data_configuration/$defs/pii_entities_configuration": close({
		pii_entity_types?: [...string]
		redaction_mask_mode?: string
	})

	_#defs: "/$defs/override_configuration/$defs/document/$defs/splitter": close({
		state!: string
	})

	_#defs: "/$defs/override_configuration/$defs/image": close({
		modality_processing?: matchN(1, [_#defs."/$defs/override_configuration/$defs/image/$defs/modality_processing", [..._#defs."/$defs/override_configuration/$defs/image/$defs/modality_processing"]])
		sensitive_data_configuration?: matchN(1, [_#defs."/$defs/override_configuration/$defs/image/$defs/sensitive_data_configuration", [..._#defs."/$defs/override_configuration/$defs/image/$defs/sensitive_data_configuration"]])
	})

	_#defs: "/$defs/override_configuration/$defs/image/$defs/modality_processing": close({
		state!: string
	})

	_#defs: "/$defs/override_configuration/$defs/image/$defs/sensitive_data_configuration": close({
		pii_entities_configuration?: matchN(1, [_#defs."/$defs/override_configuration/$defs/image/$defs/sensitive_data_configuration/$defs/pii_entities_configuration", [..._#defs."/$defs/override_configuration/$defs/image/$defs/sensitive_data_configuration/$defs/pii_entities_configuration"]])
		detection_mode!: string
		detection_scope?: [...string]
	})

	_#defs: "/$defs/override_configuration/$defs/image/$defs/sensitive_data_configuration/$defs/pii_entities_configuration": close({
		pii_entity_types?: [...string]
		redaction_mask_mode?: string
	})

	_#defs: "/$defs/override_configuration/$defs/modality_routing": close({
		jpeg?: string
		mov?:  string
		mp4?:  string
		png?:  string
	})

	_#defs: "/$defs/override_configuration/$defs/video": close({
		modality_processing?: matchN(1, [_#defs."/$defs/override_configuration/$defs/video/$defs/modality_processing", [..._#defs."/$defs/override_configuration/$defs/video/$defs/modality_processing"]])
		sensitive_data_configuration?: matchN(1, [_#defs."/$defs/override_configuration/$defs/video/$defs/sensitive_data_configuration", [..._#defs."/$defs/override_configuration/$defs/video/$defs/sensitive_data_configuration"]])
	})

	_#defs: "/$defs/override_configuration/$defs/video/$defs/modality_processing": close({
		state!: string
	})

	_#defs: "/$defs/override_configuration/$defs/video/$defs/sensitive_data_configuration": close({
		pii_entities_configuration?: matchN(1, [_#defs."/$defs/override_configuration/$defs/video/$defs/sensitive_data_configuration/$defs/pii_entities_configuration", [..._#defs."/$defs/override_configuration/$defs/video/$defs/sensitive_data_configuration/$defs/pii_entities_configuration"]])
		detection_mode!: string
		detection_scope?: [...string]
	})

	_#defs: "/$defs/override_configuration/$defs/video/$defs/sensitive_data_configuration/$defs/pii_entities_configuration": close({
		pii_entity_types?: [...string]
		redaction_mask_mode?: string
	})

	_#defs: "/$defs/standard_output_configuration/$defs/audio": close({
		extraction?: matchN(1, [_#defs."/$defs/standard_output_configuration/$defs/audio/$defs/extraction", [..._#defs."/$defs/standard_output_configuration/$defs/audio/$defs/extraction"]])
		generative_field?: matchN(1, [_#defs."/$defs/standard_output_configuration/$defs/audio/$defs/generative_field", [..._#defs."/$defs/standard_output_configuration/$defs/audio/$defs/generative_field"]])
	})

	_#defs: "/$defs/standard_output_configuration/$defs/audio/$defs/extraction": close({
		category?: matchN(1, [_#defs."/$defs/standard_output_configuration/$defs/audio/$defs/extraction/$defs/category", [..._#defs."/$defs/standard_output_configuration/$defs/audio/$defs/extraction/$defs/category"]])
	})

	_#defs: "/$defs/standard_output_configuration/$defs/audio/$defs/extraction/$defs/category": close({
		type_configuration?: matchN(1, [_#defs."/$defs/standard_output_configuration/$defs/audio/$defs/extraction/$defs/category/$defs/type_configuration", [..._#defs."/$defs/standard_output_configuration/$defs/audio/$defs/extraction/$defs/category/$defs/type_configuration"]])
		state!: string
		types?: [...string]
	})

	_#defs: "/$defs/standard_output_configuration/$defs/audio/$defs/extraction/$defs/category/$defs/type_configuration": close({
		transcript?: matchN(1, [_#defs."/$defs/standard_output_configuration/$defs/audio/$defs/extraction/$defs/category/$defs/type_configuration/$defs/transcript", [..._#defs."/$defs/standard_output_configuration/$defs/audio/$defs/extraction/$defs/category/$defs/type_configuration/$defs/transcript"]])
	})

	_#defs: "/$defs/standard_output_configuration/$defs/audio/$defs/extraction/$defs/category/$defs/type_configuration/$defs/transcript": close({
		channel_labeling?: matchN(1, [_#defs."/$defs/standard_output_configuration/$defs/audio/$defs/extraction/$defs/category/$defs/type_configuration/$defs/transcript/$defs/channel_labeling", [..._#defs."/$defs/standard_output_configuration/$defs/audio/$defs/extraction/$defs/category/$defs/type_configuration/$defs/transcript/$defs/channel_labeling"]])
		speaker_labeling?: matchN(1, [_#defs."/$defs/standard_output_configuration/$defs/audio/$defs/extraction/$defs/category/$defs/type_configuration/$defs/transcript/$defs/speaker_labeling", [..._#defs."/$defs/standard_output_configuration/$defs/audio/$defs/extraction/$defs/category/$defs/type_configuration/$defs/transcript/$defs/speaker_labeling"]])
	})

	_#defs: "/$defs/standard_output_configuration/$defs/audio/$defs/extraction/$defs/category/$defs/type_configuration/$defs/transcript/$defs/channel_labeling": close({
		state!: string
	})

	_#defs: "/$defs/standard_output_configuration/$defs/audio/$defs/extraction/$defs/category/$defs/type_configuration/$defs/transcript/$defs/speaker_labeling": close({
		state!: string
	})

	_#defs: "/$defs/standard_output_configuration/$defs/audio/$defs/generative_field": close({
		state!: string
		types?: [...string]
	})

	_#defs: "/$defs/standard_output_configuration/$defs/document": close({
		extraction?: matchN(1, [_#defs."/$defs/standard_output_configuration/$defs/document/$defs/extraction", [..._#defs."/$defs/standard_output_configuration/$defs/document/$defs/extraction"]])
		generative_field?: matchN(1, [_#defs."/$defs/standard_output_configuration/$defs/document/$defs/generative_field", [..._#defs."/$defs/standard_output_configuration/$defs/document/$defs/generative_field"]])
		output_format?: matchN(1, [_#defs."/$defs/standard_output_configuration/$defs/document/$defs/output_format", [..._#defs."/$defs/standard_output_configuration/$defs/document/$defs/output_format"]])
	})

	_#defs: "/$defs/standard_output_configuration/$defs/document/$defs/extraction": close({
		bounding_box?: matchN(1, [_#defs."/$defs/standard_output_configuration/$defs/document/$defs/extraction/$defs/bounding_box", [..._#defs."/$defs/standard_output_configuration/$defs/document/$defs/extraction/$defs/bounding_box"]])
		granularity?: matchN(1, [_#defs."/$defs/standard_output_configuration/$defs/document/$defs/extraction/$defs/granularity", [..._#defs."/$defs/standard_output_configuration/$defs/document/$defs/extraction/$defs/granularity"]])
	})

	_#defs: "/$defs/standard_output_configuration/$defs/document/$defs/extraction/$defs/bounding_box": close({
		state!: string
	})

	_#defs: "/$defs/standard_output_configuration/$defs/document/$defs/extraction/$defs/granularity": close({
		types?: [...string]
	})

	_#defs: "/$defs/standard_output_configuration/$defs/document/$defs/generative_field": close({
		state!: string
	})

	_#defs: "/$defs/standard_output_configuration/$defs/document/$defs/output_format": close({
		additional_file_format?: matchN(1, [_#defs."/$defs/standard_output_configuration/$defs/document/$defs/output_format/$defs/additional_file_format", [..._#defs."/$defs/standard_output_configuration/$defs/document/$defs/output_format/$defs/additional_file_format"]])
		text_format?: matchN(1, [_#defs."/$defs/standard_output_configuration/$defs/document/$defs/output_format/$defs/text_format", [..._#defs."/$defs/standard_output_configuration/$defs/document/$defs/output_format/$defs/text_format"]])
	})

	_#defs: "/$defs/standard_output_configuration/$defs/document/$defs/output_format/$defs/additional_file_format": close({
		state!: string
	})

	_#defs: "/$defs/standard_output_configuration/$defs/document/$defs/output_format/$defs/text_format": close({
		types?: [...string]
	})

	_#defs: "/$defs/standard_output_configuration/$defs/image": close({
		extraction?: matchN(1, [_#defs."/$defs/standard_output_configuration/$defs/image/$defs/extraction", [..._#defs."/$defs/standard_output_configuration/$defs/image/$defs/extraction"]])
		generative_field?: matchN(1, [_#defs."/$defs/standard_output_configuration/$defs/image/$defs/generative_field", [..._#defs."/$defs/standard_output_configuration/$defs/image/$defs/generative_field"]])
	})

	_#defs: "/$defs/standard_output_configuration/$defs/image/$defs/extraction": close({
		bounding_box?: matchN(1, [_#defs."/$defs/standard_output_configuration/$defs/image/$defs/extraction/$defs/bounding_box", [..._#defs."/$defs/standard_output_configuration/$defs/image/$defs/extraction/$defs/bounding_box"]])
		category?: matchN(1, [_#defs."/$defs/standard_output_configuration/$defs/image/$defs/extraction/$defs/category", [..._#defs."/$defs/standard_output_configuration/$defs/image/$defs/extraction/$defs/category"]])
	})

	_#defs: "/$defs/standard_output_configuration/$defs/image/$defs/extraction/$defs/bounding_box": close({
		state!: string
	})

	_#defs: "/$defs/standard_output_configuration/$defs/image/$defs/extraction/$defs/category": close({
		state!: string
		types?: [...string]
	})

	_#defs: "/$defs/standard_output_configuration/$defs/image/$defs/generative_field": close({
		state!: string
		types?: [...string]
	})

	_#defs: "/$defs/standard_output_configuration/$defs/video": close({
		extraction?: matchN(1, [_#defs."/$defs/standard_output_configuration/$defs/video/$defs/extraction", [..._#defs."/$defs/standard_output_configuration/$defs/video/$defs/extraction"]])
		generative_field?: matchN(1, [_#defs."/$defs/standard_output_configuration/$defs/video/$defs/generative_field", [..._#defs."/$defs/standard_output_configuration/$defs/video/$defs/generative_field"]])
	})

	_#defs: "/$defs/standard_output_configuration/$defs/video/$defs/extraction": close({
		bounding_box?: matchN(1, [_#defs."/$defs/standard_output_configuration/$defs/video/$defs/extraction/$defs/bounding_box", [..._#defs."/$defs/standard_output_configuration/$defs/video/$defs/extraction/$defs/bounding_box"]])
		category?: matchN(1, [_#defs."/$defs/standard_output_configuration/$defs/video/$defs/extraction/$defs/category", [..._#defs."/$defs/standard_output_configuration/$defs/video/$defs/extraction/$defs/category"]])
	})

	_#defs: "/$defs/standard_output_configuration/$defs/video/$defs/extraction/$defs/bounding_box": close({
		state!: string
	})

	_#defs: "/$defs/standard_output_configuration/$defs/video/$defs/extraction/$defs/category": close({
		state!: string
		types?: [...string]
	})

	_#defs: "/$defs/standard_output_configuration/$defs/video/$defs/generative_field": close({
		state!: string
		types?: [...string]
	})
}
