package data

#aws_neptune_engine_version: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_neptune_engine_version")
	engine?:             string
	engine_description?: string
	exportable_log_types?: [...string]
	id?:                     string
	parameter_group_family?: string
	preferred_versions?: [...string]
	supported_timezones?: [...string]
	supports_log_exports_to_cloudwatch?: bool
	supports_read_replica?:              bool
	valid_upgrade_targets?: [...string]
	version?:             string
	version_description?: string
}
