package data

#aws_rds_engine_version: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_rds_engine_version")
	close({
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
		region?: string
		status?: string
		supported_character_sets?: [...string]
		supported_feature_names?: [...string]
		supported_modes?: [...string]
		supported_timezones?: [...string]
		supports_certificate_rotation_without_restart?: bool
		supports_global_databases?:                     bool
		supports_integrations?:                         bool
		supports_limitless_database?:                   bool
		supports_local_write_forwarding?:               bool
		supports_log_exports_to_cloudwatch?:            bool
		supports_parallel_query?:                       bool
		filter?: matchN(1, [#filter, [...#filter]])
		supports_read_replica?: bool
		valid_major_targets?: [...string]
		valid_minor_targets?: [...string]
		valid_upgrade_targets?: [...string]
		version?:             string
		version_actual?:      string
		version_description?: string
	})

	#filter: close({
		name!: string
		values!: [...string]
	})
}
