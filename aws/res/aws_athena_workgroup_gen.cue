package res

import "list"

#aws_athena_workgroup: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_athena_workgroup")
	close({
		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:        string
		arn?:           string
		description?:   string
		force_destroy?: bool
		id?:            string
		name!:          string
		state?:         string
		tags?: [string]:     string
		tags_all?: [string]: string
		configuration?: matchN(1, [#configuration, list.MaxItems(1) & [...#configuration]])
	})

	#configuration: close({
		bytes_scanned_cutoff_per_query?: number
		engine_version?: matchN(1, [_#defs."/$defs/configuration/$defs/engine_version", list.MaxItems(1) & [..._#defs."/$defs/configuration/$defs/engine_version"]])
		enforce_workgroup_configuration?:    bool
		execution_role?:                     string
		publish_cloudwatch_metrics_enabled?: bool
		requester_pays_enabled?:             bool
		identity_center_configuration?: matchN(1, [_#defs."/$defs/configuration/$defs/identity_center_configuration", list.MaxItems(1) & [..._#defs."/$defs/configuration/$defs/identity_center_configuration"]])
		result_configuration?: matchN(1, [_#defs."/$defs/configuration/$defs/result_configuration", list.MaxItems(1) & [..._#defs."/$defs/configuration/$defs/result_configuration"]])
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
		acl_configuration?: matchN(1, [_#defs."/$defs/configuration/$defs/result_configuration/$defs/acl_configuration", list.MaxItems(1) & [..._#defs."/$defs/configuration/$defs/result_configuration/$defs/acl_configuration"]])
		encryption_configuration?: matchN(1, [_#defs."/$defs/configuration/$defs/result_configuration/$defs/encryption_configuration", list.MaxItems(1) & [..._#defs."/$defs/configuration/$defs/result_configuration/$defs/encryption_configuration"]])
		expected_bucket_owner?: string
		output_location?:       string
	})

	_#defs: "/$defs/configuration/$defs/result_configuration/$defs/acl_configuration": close({
		s3_acl_option!: string
	})

	_#defs: "/$defs/configuration/$defs/result_configuration/$defs/encryption_configuration": close({
		encryption_option?: string
		kms_key_arn?:       string
	})
}
