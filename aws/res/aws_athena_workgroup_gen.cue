package res

import "list"

#aws_athena_workgroup: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_athena_workgroup")
	close({
		arn?: string
		configuration?: matchN(1, [#configuration, list.MaxItems(1) & [...#configuration]])
		description?:   string
		force_destroy?: bool
		id?:            string
		name!:          string
		region?:        string
		state?:         string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#configuration: close({
		bytes_scanned_cutoff_per_query?: number
		engine_version?: matchN(1, [_#defs."/$defs/configuration/$defs/engine_version", list.MaxItems(1) & [..._#defs."/$defs/configuration/$defs/engine_version"]])
		identity_center_configuration?: matchN(1, [_#defs."/$defs/configuration/$defs/identity_center_configuration", list.MaxItems(1) & [..._#defs."/$defs/configuration/$defs/identity_center_configuration"]])
		result_configuration?: matchN(1, [_#defs."/$defs/configuration/$defs/result_configuration", list.MaxItems(1) & [..._#defs."/$defs/configuration/$defs/result_configuration"]])
		enforce_workgroup_configuration?:    bool
		execution_role?:                     string
		publish_cloudwatch_metrics_enabled?: bool
		requester_pays_enabled?:             bool
	})

	_#defs: "/$defs/configuration/$defs/engine_version": close({
		effective_engine_version?: string
		selected_engine_version?:  string
	})

	_#defs: "/$defs/configuration/$defs/identity_center_configuration": close({
		enable_identity_center?:       bool
		identity_center_instance_arn?: string
	})

	_#defs: "/$defs/configuration/$defs/result_configuration": close({
		expected_bucket_owner?: string
		output_location?:       string
		acl_configuration?: matchN(1, [_#defs."/$defs/configuration/$defs/result_configuration/$defs/acl_configuration", list.MaxItems(1) & [..._#defs."/$defs/configuration/$defs/result_configuration/$defs/acl_configuration"]])
		encryption_configuration?: matchN(1, [_#defs."/$defs/configuration/$defs/result_configuration/$defs/encryption_configuration", list.MaxItems(1) & [..._#defs."/$defs/configuration/$defs/result_configuration/$defs/encryption_configuration"]])
	})

	_#defs: "/$defs/configuration/$defs/result_configuration/$defs/acl_configuration": close({
		s3_acl_option!: string
	})

	_#defs: "/$defs/configuration/$defs/result_configuration/$defs/encryption_configuration": close({
		encryption_option?: string
		kms_key_arn?:       string
	})
}
