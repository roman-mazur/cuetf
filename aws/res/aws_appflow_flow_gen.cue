package res

import "list"

#aws_appflow_flow: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_appflow_flow")
	close({
		arn?:         string
		description?: string
		flow_status?: string
		id?:          string
		destination_flow_config?: matchN(1, [#destination_flow_config, [_, ...] & [...#destination_flow_config]])
		kms_arn?: string
		name!:    string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		tags?: [string]: string
		metadata_catalog_config?: matchN(1, [#metadata_catalog_config, list.MaxItems(1) & [...#metadata_catalog_config]])
		tags_all?: [string]: string
		source_flow_config?: matchN(1, [#source_flow_config, list.MaxItems(1) & [_, ...] & [...#source_flow_config]])
		task?: matchN(1, [#task, [_, ...] & [...#task]])
		trigger_config?: matchN(1, [#trigger_config, list.MaxItems(1) & [_, ...] & [...#trigger_config]])
	})

	#destination_flow_config: close({
		destination_connector_properties?: matchN(1, [_#defs."/$defs/destination_flow_config/$defs/destination_connector_properties", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/destination_flow_config/$defs/destination_connector_properties"]])
		api_version?:            string
		connector_profile_name?: string
		connector_type!:         string
	})

	#metadata_catalog_config: close({
		glue_data_catalog?: matchN(1, [_#defs."/$defs/metadata_catalog_config/$defs/glue_data_catalog", list.MaxItems(1) & [..._#defs."/$defs/metadata_catalog_config/$defs/glue_data_catalog"]])
	})

	#source_flow_config: close({
		incremental_pull_config?: matchN(1, [_#defs."/$defs/source_flow_config/$defs/incremental_pull_config", list.MaxItems(1) & [..._#defs."/$defs/source_flow_config/$defs/incremental_pull_config"]])
		source_connector_properties?: matchN(1, [_#defs."/$defs/source_flow_config/$defs/source_connector_properties", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/source_flow_config/$defs/source_connector_properties"]])
		api_version?:            string
		connector_profile_name?: string
		connector_type!:         string
	})

	#task: close({
		connector_operator?: matchN(1, [_#defs."/$defs/task/$defs/connector_operator", [..._#defs."/$defs/task/$defs/connector_operator"]])
		destination_field?: string
		source_fields?: [...string]
		task_properties?: [string]: string
		task_type!: string
	})

	#trigger_config: close({
		trigger_properties?: matchN(1, [_#defs."/$defs/trigger_config/$defs/trigger_properties", list.MaxItems(1) & [..._#defs."/$defs/trigger_config/$defs/trigger_properties"]])
		trigger_type!: string
	})

	_#defs: "/$defs/destination_flow_config/$defs/destination_connector_properties": close({
		custom_connector?: matchN(1, [_#defs."/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/custom_connector", list.MaxItems(1) & [..._#defs."/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/custom_connector"]])
		customer_profiles?: matchN(1, [_#defs."/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/customer_profiles", list.MaxItems(1) & [..._#defs."/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/customer_profiles"]])
		event_bridge?: matchN(1, [_#defs."/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/event_bridge", list.MaxItems(1) & [..._#defs."/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/event_bridge"]])
		honeycode?: matchN(1, [_#defs."/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/honeycode", list.MaxItems(1) & [..._#defs."/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/honeycode"]])
		lookout_metrics?: matchN(1, [_#defs."/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/lookout_metrics", list.MaxItems(1) & [..._#defs."/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/lookout_metrics"]])
		marketo?: matchN(1, [_#defs."/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/marketo", list.MaxItems(1) & [..._#defs."/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/marketo"]])
		redshift?: matchN(1, [_#defs."/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/redshift", list.MaxItems(1) & [..._#defs."/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/redshift"]])
		s3?: matchN(1, [_#defs."/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/s3", list.MaxItems(1) & [..._#defs."/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/s3"]])
		salesforce?: matchN(1, [_#defs."/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/salesforce", list.MaxItems(1) & [..._#defs."/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/salesforce"]])
		sapo_data?: matchN(1, [_#defs."/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/sapo_data", list.MaxItems(1) & [..._#defs."/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/sapo_data"]])
		snowflake?: matchN(1, [_#defs."/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/snowflake", list.MaxItems(1) & [..._#defs."/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/snowflake"]])
		upsolver?: matchN(1, [_#defs."/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/upsolver", list.MaxItems(1) & [..._#defs."/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/upsolver"]])
		zendesk?: matchN(1, [_#defs."/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/zendesk", list.MaxItems(1) & [..._#defs."/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/zendesk"]])
	})

	_#defs: "/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/custom_connector": close({
		error_handling_config?: matchN(1, [_#defs."/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/custom_connector/$defs/error_handling_config", list.MaxItems(1) & [..._#defs."/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/custom_connector/$defs/error_handling_config"]])
		custom_properties?: [string]: string
		entity_name!: string
		id_field_names?: [...string]
		write_operation_type?: string
	})

	_#defs: "/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/custom_connector/$defs/error_handling_config": close({
		bucket_name?:                     string
		bucket_prefix?:                   string
		fail_on_first_destination_error?: bool
	})

	_#defs: "/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/customer_profiles": close({
		domain_name!:      string
		object_type_name?: string
	})

	_#defs: "/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/event_bridge": close({
		error_handling_config?: matchN(1, [_#defs."/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/event_bridge/$defs/error_handling_config", list.MaxItems(1) & [..._#defs."/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/event_bridge/$defs/error_handling_config"]])
		object!: string
	})

	_#defs: "/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/event_bridge/$defs/error_handling_config": close({
		bucket_name?:                     string
		bucket_prefix?:                   string
		fail_on_first_destination_error?: bool
	})

	_#defs: "/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/honeycode": close({
		error_handling_config?: matchN(1, [_#defs."/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/honeycode/$defs/error_handling_config", list.MaxItems(1) & [..._#defs."/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/honeycode/$defs/error_handling_config"]])
		object!: string
	})

	_#defs: "/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/honeycode/$defs/error_handling_config": close({
		bucket_name?:                     string
		bucket_prefix?:                   string
		fail_on_first_destination_error?: bool
	})

	_#defs: "/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/lookout_metrics": close({})

	_#defs: "/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/marketo": close({
		error_handling_config?: matchN(1, [_#defs."/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/marketo/$defs/error_handling_config", list.MaxItems(1) & [..._#defs."/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/marketo/$defs/error_handling_config"]])
		object!: string
	})

	_#defs: "/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/marketo/$defs/error_handling_config": close({
		bucket_name?:                     string
		bucket_prefix?:                   string
		fail_on_first_destination_error?: bool
	})

	_#defs: "/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/redshift": close({
		error_handling_config?: matchN(1, [_#defs."/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/redshift/$defs/error_handling_config", list.MaxItems(1) & [..._#defs."/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/redshift/$defs/error_handling_config"]])
		bucket_prefix?:            string
		intermediate_bucket_name!: string
		object!:                   string
	})

	_#defs: "/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/redshift/$defs/error_handling_config": close({
		bucket_name?:                     string
		bucket_prefix?:                   string
		fail_on_first_destination_error?: bool
	})

	_#defs: "/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/s3": close({
		s3_output_format_config?: matchN(1, [_#defs."/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/s3/$defs/s3_output_format_config", list.MaxItems(1) & [..._#defs."/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/s3/$defs/s3_output_format_config"]])
		bucket_name!:   string
		bucket_prefix?: string
	})

	_#defs: "/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/s3/$defs/s3_output_format_config": close({
		aggregation_config?: matchN(1, [_#defs."/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/s3/$defs/s3_output_format_config/$defs/aggregation_config", list.MaxItems(1) & [..._#defs."/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/s3/$defs/s3_output_format_config/$defs/aggregation_config"]])
		prefix_config?: matchN(1, [_#defs."/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/s3/$defs/s3_output_format_config/$defs/prefix_config", list.MaxItems(1) & [..._#defs."/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/s3/$defs/s3_output_format_config/$defs/prefix_config"]])
		file_type?:                   string
		preserve_source_data_typing?: bool
	})

	_#defs: "/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/s3/$defs/s3_output_format_config/$defs/aggregation_config": close({
		aggregation_type?: string
		target_file_size?: number
	})

	_#defs: "/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/s3/$defs/s3_output_format_config/$defs/prefix_config": close({
		prefix_format?: string
		prefix_hierarchy?: [...string]
		prefix_type?: string
	})

	_#defs: "/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/salesforce": close({
		error_handling_config?: matchN(1, [_#defs."/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/salesforce/$defs/error_handling_config", list.MaxItems(1) & [..._#defs."/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/salesforce/$defs/error_handling_config"]])
		data_transfer_api?: string
		id_field_names?: [...string]
		object!:               string
		write_operation_type?: string
	})

	_#defs: "/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/salesforce/$defs/error_handling_config": close({
		bucket_name?:                     string
		bucket_prefix?:                   string
		fail_on_first_destination_error?: bool
	})

	_#defs: "/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/sapo_data": close({
		error_handling_config?: matchN(1, [_#defs."/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/sapo_data/$defs/error_handling_config", list.MaxItems(1) & [..._#defs."/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/sapo_data/$defs/error_handling_config"]])
		success_response_handling_config?: matchN(1, [_#defs."/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/sapo_data/$defs/success_response_handling_config", list.MaxItems(1) & [..._#defs."/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/sapo_data/$defs/success_response_handling_config"]])
		id_field_names?: [...string]
		object_path!:          string
		write_operation_type?: string
	})

	_#defs: "/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/sapo_data/$defs/error_handling_config": close({
		bucket_name?:                     string
		bucket_prefix?:                   string
		fail_on_first_destination_error?: bool
	})

	_#defs: "/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/sapo_data/$defs/success_response_handling_config": close({
		bucket_name?:   string
		bucket_prefix?: string
	})

	_#defs: "/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/snowflake": close({
		error_handling_config?: matchN(1, [_#defs."/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/snowflake/$defs/error_handling_config", list.MaxItems(1) & [..._#defs."/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/snowflake/$defs/error_handling_config"]])
		bucket_prefix?:            string
		intermediate_bucket_name!: string
		object!:                   string
	})

	_#defs: "/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/snowflake/$defs/error_handling_config": close({
		bucket_name?:                     string
		bucket_prefix?:                   string
		fail_on_first_destination_error?: bool
	})

	_#defs: "/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/upsolver": close({
		s3_output_format_config?: matchN(1, [_#defs."/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/upsolver/$defs/s3_output_format_config", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/upsolver/$defs/s3_output_format_config"]])
		bucket_name!:   string
		bucket_prefix?: string
	})

	_#defs: "/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/upsolver/$defs/s3_output_format_config": close({
		aggregation_config?: matchN(1, [_#defs."/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/upsolver/$defs/s3_output_format_config/$defs/aggregation_config", list.MaxItems(1) & [..._#defs."/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/upsolver/$defs/s3_output_format_config/$defs/aggregation_config"]])
		prefix_config?: matchN(1, [_#defs."/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/upsolver/$defs/s3_output_format_config/$defs/prefix_config", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/upsolver/$defs/s3_output_format_config/$defs/prefix_config"]])
		file_type?: string
	})

	_#defs: "/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/upsolver/$defs/s3_output_format_config/$defs/aggregation_config": close({
		aggregation_type?: string
	})

	_#defs: "/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/upsolver/$defs/s3_output_format_config/$defs/prefix_config": close({
		prefix_format?: string
		prefix_hierarchy?: [...string]
		prefix_type!: string
	})

	_#defs: "/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/zendesk": close({
		error_handling_config?: matchN(1, [_#defs."/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/zendesk/$defs/error_handling_config", list.MaxItems(1) & [..._#defs."/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/zendesk/$defs/error_handling_config"]])
		id_field_names?: [...string]
		object!:               string
		write_operation_type?: string
	})

	_#defs: "/$defs/destination_flow_config/$defs/destination_connector_properties/$defs/zendesk/$defs/error_handling_config": close({
		bucket_name?:                     string
		bucket_prefix?:                   string
		fail_on_first_destination_error?: bool
	})

	_#defs: "/$defs/metadata_catalog_config/$defs/glue_data_catalog": close({
		database_name!: string
		role_arn!:      string
		table_prefix!:  string
	})

	_#defs: "/$defs/source_flow_config/$defs/incremental_pull_config": close({
		datetime_type_field_name?: string
	})

	_#defs: "/$defs/source_flow_config/$defs/source_connector_properties": close({
		amplitude?: matchN(1, [_#defs."/$defs/source_flow_config/$defs/source_connector_properties/$defs/amplitude", list.MaxItems(1) & [..._#defs."/$defs/source_flow_config/$defs/source_connector_properties/$defs/amplitude"]])
		custom_connector?: matchN(1, [_#defs."/$defs/source_flow_config/$defs/source_connector_properties/$defs/custom_connector", list.MaxItems(1) & [..._#defs."/$defs/source_flow_config/$defs/source_connector_properties/$defs/custom_connector"]])
		datadog?: matchN(1, [_#defs."/$defs/source_flow_config/$defs/source_connector_properties/$defs/datadog", list.MaxItems(1) & [..._#defs."/$defs/source_flow_config/$defs/source_connector_properties/$defs/datadog"]])
		dynatrace?: matchN(1, [_#defs."/$defs/source_flow_config/$defs/source_connector_properties/$defs/dynatrace", list.MaxItems(1) & [..._#defs."/$defs/source_flow_config/$defs/source_connector_properties/$defs/dynatrace"]])
		google_analytics?: matchN(1, [_#defs."/$defs/source_flow_config/$defs/source_connector_properties/$defs/google_analytics", list.MaxItems(1) & [..._#defs."/$defs/source_flow_config/$defs/source_connector_properties/$defs/google_analytics"]])
		infor_nexus?: matchN(1, [_#defs."/$defs/source_flow_config/$defs/source_connector_properties/$defs/infor_nexus", list.MaxItems(1) & [..._#defs."/$defs/source_flow_config/$defs/source_connector_properties/$defs/infor_nexus"]])
		marketo?: matchN(1, [_#defs."/$defs/source_flow_config/$defs/source_connector_properties/$defs/marketo", list.MaxItems(1) & [..._#defs."/$defs/source_flow_config/$defs/source_connector_properties/$defs/marketo"]])
		s3?: matchN(1, [_#defs."/$defs/source_flow_config/$defs/source_connector_properties/$defs/s3", list.MaxItems(1) & [..._#defs."/$defs/source_flow_config/$defs/source_connector_properties/$defs/s3"]])
		salesforce?: matchN(1, [_#defs."/$defs/source_flow_config/$defs/source_connector_properties/$defs/salesforce", list.MaxItems(1) & [..._#defs."/$defs/source_flow_config/$defs/source_connector_properties/$defs/salesforce"]])
		sapo_data?: matchN(1, [_#defs."/$defs/source_flow_config/$defs/source_connector_properties/$defs/sapo_data", list.MaxItems(1) & [..._#defs."/$defs/source_flow_config/$defs/source_connector_properties/$defs/sapo_data"]])
		service_now?: matchN(1, [_#defs."/$defs/source_flow_config/$defs/source_connector_properties/$defs/service_now", list.MaxItems(1) & [..._#defs."/$defs/source_flow_config/$defs/source_connector_properties/$defs/service_now"]])
		singular?: matchN(1, [_#defs."/$defs/source_flow_config/$defs/source_connector_properties/$defs/singular", list.MaxItems(1) & [..._#defs."/$defs/source_flow_config/$defs/source_connector_properties/$defs/singular"]])
		slack?: matchN(1, [_#defs."/$defs/source_flow_config/$defs/source_connector_properties/$defs/slack", list.MaxItems(1) & [..._#defs."/$defs/source_flow_config/$defs/source_connector_properties/$defs/slack"]])
		trendmicro?: matchN(1, [_#defs."/$defs/source_flow_config/$defs/source_connector_properties/$defs/trendmicro", list.MaxItems(1) & [..._#defs."/$defs/source_flow_config/$defs/source_connector_properties/$defs/trendmicro"]])
		veeva?: matchN(1, [_#defs."/$defs/source_flow_config/$defs/source_connector_properties/$defs/veeva", list.MaxItems(1) & [..._#defs."/$defs/source_flow_config/$defs/source_connector_properties/$defs/veeva"]])
		zendesk?: matchN(1, [_#defs."/$defs/source_flow_config/$defs/source_connector_properties/$defs/zendesk", list.MaxItems(1) & [..._#defs."/$defs/source_flow_config/$defs/source_connector_properties/$defs/zendesk"]])
	})

	_#defs: "/$defs/source_flow_config/$defs/source_connector_properties/$defs/amplitude": close({
		object!: string
	})

	_#defs: "/$defs/source_flow_config/$defs/source_connector_properties/$defs/custom_connector": close({
		custom_properties?: [string]: string
		entity_name!: string
	})

	_#defs: "/$defs/source_flow_config/$defs/source_connector_properties/$defs/datadog": close({
		object!: string
	})

	_#defs: "/$defs/source_flow_config/$defs/source_connector_properties/$defs/dynatrace": close({
		object!: string
	})

	_#defs: "/$defs/source_flow_config/$defs/source_connector_properties/$defs/google_analytics": close({
		object!: string
	})

	_#defs: "/$defs/source_flow_config/$defs/source_connector_properties/$defs/infor_nexus": close({
		object!: string
	})

	_#defs: "/$defs/source_flow_config/$defs/source_connector_properties/$defs/marketo": close({
		object!: string
	})

	_#defs: "/$defs/source_flow_config/$defs/source_connector_properties/$defs/s3": close({
		s3_input_format_config?: matchN(1, [_#defs."/$defs/source_flow_config/$defs/source_connector_properties/$defs/s3/$defs/s3_input_format_config", list.MaxItems(1) & [..._#defs."/$defs/source_flow_config/$defs/source_connector_properties/$defs/s3/$defs/s3_input_format_config"]])
		bucket_name!:   string
		bucket_prefix!: string
	})

	_#defs: "/$defs/source_flow_config/$defs/source_connector_properties/$defs/s3/$defs/s3_input_format_config": close({
		s3_input_file_type?: string
	})

	_#defs: "/$defs/source_flow_config/$defs/source_connector_properties/$defs/salesforce": close({
		data_transfer_api?:           string
		enable_dynamic_field_update?: bool
		include_deleted_records?:     bool
		object!:                      string
	})

	_#defs: "/$defs/source_flow_config/$defs/source_connector_properties/$defs/sapo_data": close({
		pagination_config?: matchN(1, [_#defs."/$defs/source_flow_config/$defs/source_connector_properties/$defs/sapo_data/$defs/pagination_config", list.MaxItems(1) & [..._#defs."/$defs/source_flow_config/$defs/source_connector_properties/$defs/sapo_data/$defs/pagination_config"]])
		parallelism_config?: matchN(1, [_#defs."/$defs/source_flow_config/$defs/source_connector_properties/$defs/sapo_data/$defs/parallelism_config", list.MaxItems(1) & [..._#defs."/$defs/source_flow_config/$defs/source_connector_properties/$defs/sapo_data/$defs/parallelism_config"]])
		object_path!: string
	})

	_#defs: "/$defs/source_flow_config/$defs/source_connector_properties/$defs/sapo_data/$defs/pagination_config": close({
		max_page_size!: number
	})

	_#defs: "/$defs/source_flow_config/$defs/source_connector_properties/$defs/sapo_data/$defs/parallelism_config": close({
		max_page_size!: number
	})

	_#defs: "/$defs/source_flow_config/$defs/source_connector_properties/$defs/service_now": close({
		object!: string
	})

	_#defs: "/$defs/source_flow_config/$defs/source_connector_properties/$defs/singular": close({
		object!: string
	})

	_#defs: "/$defs/source_flow_config/$defs/source_connector_properties/$defs/slack": close({
		object!: string
	})

	_#defs: "/$defs/source_flow_config/$defs/source_connector_properties/$defs/trendmicro": close({
		object!: string
	})

	_#defs: "/$defs/source_flow_config/$defs/source_connector_properties/$defs/veeva": close({
		document_type?:        string
		include_all_versions?: bool
		include_renditions?:   bool
		include_source_files?: bool
		object!:               string
	})

	_#defs: "/$defs/source_flow_config/$defs/source_connector_properties/$defs/zendesk": close({
		object!: string
	})

	_#defs: "/$defs/task/$defs/connector_operator": close({
		amplitude?:        string
		custom_connector?: string
		datadog?:          string
		dynatrace?:        string
		google_analytics?: string
		infor_nexus?:      string
		marketo?:          string
		s3?:               string
		salesforce?:       string
		sapo_data?:        string
		service_now?:      string
		singular?:         string
		slack?:            string
		trendmicro?:       string
		veeva?:            string
		zendesk?:          string
	})

	_#defs: "/$defs/trigger_config/$defs/trigger_properties": close({
		scheduled?: matchN(1, [_#defs."/$defs/trigger_config/$defs/trigger_properties/$defs/scheduled", list.MaxItems(1) & [..._#defs."/$defs/trigger_config/$defs/trigger_properties/$defs/scheduled"]])
	})

	_#defs: "/$defs/trigger_config/$defs/trigger_properties/$defs/scheduled": close({
		data_pull_mode?:       string
		first_execution_from?: string
		schedule_end_time?:    string
		schedule_expression!:  string
		schedule_offset?:      number
		schedule_start_time?:  string
		timezone?:             string
	})
}
