package data

#aws_rds_engine_version: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_rds_engine_version")
	default_character_set?: string
	default_only?:          bool
	engine!:                string
	engine_description?:    string
	exportable_log_types?: [...string]
	has_major_target?:       bool
	has_minor_target?:       bool
	id?:                     string
	include_all?:            bool
	latest?:                 bool
	parameter_group_family?: string
	preferred_major_targets?: [...string]
	preferred_upgrade_targets?: [...string]
	preferred_versions?: [...string]
	status?: string
	supported_character_sets?: [...string]
	supported_feature_names?: [...string]
	supported_modes?: [...string]
	supported_timezones?: [...string]
	supports_global_databases?:          bool
	supports_limitless_database?:        bool
	supports_log_exports_to_cloudwatch?: bool
	supports_parallel_query?:            bool
	supports_read_replica?:              bool
	valid_major_targets?: [...string]
	valid_minor_targets?: [...string]
	valid_upgrade_targets?: [...string]
	version?:             string
	version_actual?:      string
	version_description?: string
	filter?: #filter | [...#filter]

	#filter: {
		name!: string
		values!: [...string]
	}
}
