package res

import "list"

#aws_chimesdkmediapipelines_media_insights_pipeline_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_chimesdkmediapipelines_media_insights_pipeline_configuration")
	close({
		arn?:  string
		id?:   string
		name!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                   string
		resource_access_role_arn!: string
		elements!: matchN(1, [#elements, [_, ...] & [...#elements]])
		tags?: [string]:     string
		tags_all?: [string]: string
		real_time_alert_configuration?: matchN(1, [#real_time_alert_configuration, list.MaxItems(1) & [...#real_time_alert_configuration]])
		timeouts?: #timeouts
	})

	#elements: close({
		amazon_transcribe_call_analytics_processor_configuration?: matchN(1, [_#defs."/$defs/elements/$defs/amazon_transcribe_call_analytics_processor_configuration", list.MaxItems(1) & [..._#defs."/$defs/elements/$defs/amazon_transcribe_call_analytics_processor_configuration"]])
		amazon_transcribe_processor_configuration?: matchN(1, [_#defs."/$defs/elements/$defs/amazon_transcribe_processor_configuration", list.MaxItems(1) & [..._#defs."/$defs/elements/$defs/amazon_transcribe_processor_configuration"]])
		kinesis_data_stream_sink_configuration?: matchN(1, [_#defs."/$defs/elements/$defs/kinesis_data_stream_sink_configuration", list.MaxItems(1) & [..._#defs."/$defs/elements/$defs/kinesis_data_stream_sink_configuration"]])
		lambda_function_sink_configuration?: matchN(1, [_#defs."/$defs/elements/$defs/lambda_function_sink_configuration", list.MaxItems(1) & [..._#defs."/$defs/elements/$defs/lambda_function_sink_configuration"]])
		s3_recording_sink_configuration?: matchN(1, [_#defs."/$defs/elements/$defs/s3_recording_sink_configuration", list.MaxItems(1) & [..._#defs."/$defs/elements/$defs/s3_recording_sink_configuration"]])
		sns_topic_sink_configuration?: matchN(1, [_#defs."/$defs/elements/$defs/sns_topic_sink_configuration", list.MaxItems(1) & [..._#defs."/$defs/elements/$defs/sns_topic_sink_configuration"]])
		sqs_queue_sink_configuration?: matchN(1, [_#defs."/$defs/elements/$defs/sqs_queue_sink_configuration", list.MaxItems(1) & [..._#defs."/$defs/elements/$defs/sqs_queue_sink_configuration"]])
		voice_analytics_processor_configuration?: matchN(1, [_#defs."/$defs/elements/$defs/voice_analytics_processor_configuration", list.MaxItems(1) & [..._#defs."/$defs/elements/$defs/voice_analytics_processor_configuration"]])
		type!: string
	})

	#real_time_alert_configuration: close({
		rules!: matchN(1, [_#defs."/$defs/real_time_alert_configuration/$defs/rules", list.MaxItems(3) & [_, ...] & [..._#defs."/$defs/real_time_alert_configuration/$defs/rules"]])
		disabled?: bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/elements/$defs/amazon_transcribe_call_analytics_processor_configuration": close({
		call_analytics_stream_categories?: [...string]
		content_identification_type?:          string
		content_redaction_type?:               string
		enable_partial_results_stabilization?: bool
		filter_partial_results?:               bool
		language_code!:                        string
		language_model_name?:                  string
		partial_results_stability?:            string
		post_call_analytics_settings?: matchN(1, [_#defs."/$defs/elements/$defs/amazon_transcribe_call_analytics_processor_configuration/$defs/post_call_analytics_settings", list.MaxItems(1) & [..._#defs."/$defs/elements/$defs/amazon_transcribe_call_analytics_processor_configuration/$defs/post_call_analytics_settings"]])
		pii_entity_types?:         string
		vocabulary_filter_method?: string
		vocabulary_filter_name?:   string
		vocabulary_name?:          string
	})

	_#defs: "/$defs/elements/$defs/amazon_transcribe_call_analytics_processor_configuration/$defs/post_call_analytics_settings": close({
		content_redaction_output?:     string
		data_access_role_arn!:         string
		output_encryption_kms_key_id?: string
		output_location!:              string
	})

	_#defs: "/$defs/elements/$defs/amazon_transcribe_processor_configuration": close({
		content_identification_type?:          string
		content_redaction_type?:               string
		enable_partial_results_stabilization?: bool
		filter_partial_results?:               bool
		language_code!:                        string
		language_model_name?:                  string
		partial_results_stability?:            string
		pii_entity_types?:                     string
		show_speaker_label?:                   bool
		vocabulary_filter_method?:             string
		vocabulary_filter_name?:               string
		vocabulary_name?:                      string
	})

	_#defs: "/$defs/elements/$defs/kinesis_data_stream_sink_configuration": close({
		insights_target!: string
	})

	_#defs: "/$defs/elements/$defs/lambda_function_sink_configuration": close({
		insights_target!: string
	})

	_#defs: "/$defs/elements/$defs/s3_recording_sink_configuration": close({
		destination?: string
	})

	_#defs: "/$defs/elements/$defs/sns_topic_sink_configuration": close({
		insights_target!: string
	})

	_#defs: "/$defs/elements/$defs/sqs_queue_sink_configuration": close({
		insights_target!: string
	})

	_#defs: "/$defs/elements/$defs/voice_analytics_processor_configuration": close({
		speaker_search_status!:      string
		voice_tone_analysis_status!: string
	})

	_#defs: "/$defs/real_time_alert_configuration/$defs/rules": close({
		issue_detection_configuration?: matchN(1, [_#defs."/$defs/real_time_alert_configuration/$defs/rules/$defs/issue_detection_configuration", list.MaxItems(1) & [..._#defs."/$defs/real_time_alert_configuration/$defs/rules/$defs/issue_detection_configuration"]])
		keyword_match_configuration?: matchN(1, [_#defs."/$defs/real_time_alert_configuration/$defs/rules/$defs/keyword_match_configuration", list.MaxItems(1) & [..._#defs."/$defs/real_time_alert_configuration/$defs/rules/$defs/keyword_match_configuration"]])
		sentiment_configuration?: matchN(1, [_#defs."/$defs/real_time_alert_configuration/$defs/rules/$defs/sentiment_configuration", list.MaxItems(1) & [..._#defs."/$defs/real_time_alert_configuration/$defs/rules/$defs/sentiment_configuration"]])
		type!: string
	})

	_#defs: "/$defs/real_time_alert_configuration/$defs/rules/$defs/issue_detection_configuration": close({
		rule_name!: string
	})

	_#defs: "/$defs/real_time_alert_configuration/$defs/rules/$defs/keyword_match_configuration": close({
		keywords!: [...string]
		negate?:    bool
		rule_name!: string
	})

	_#defs: "/$defs/real_time_alert_configuration/$defs/rules/$defs/sentiment_configuration": close({
		rule_name!:      string
		sentiment_type!: string
		time_period!:    number
	})
}
