package res

import "list"

#aws_ecs_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ecs_cluster")
	close({
		arn?:  string
		id?:   string
		name!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		configuration?: matchN(1, [#configuration, list.MaxItems(1) & [...#configuration]])
		service_connect_defaults?: matchN(1, [#service_connect_defaults, list.MaxItems(1) & [...#service_connect_defaults]])
		setting?: matchN(1, [#setting, [...#setting]])
	})

	#configuration: close({
		execute_command_configuration?: matchN(1, [_#defs."/$defs/configuration/$defs/execute_command_configuration", list.MaxItems(1) & [..._#defs."/$defs/configuration/$defs/execute_command_configuration"]])
		managed_storage_configuration?: matchN(1, [_#defs."/$defs/configuration/$defs/managed_storage_configuration", list.MaxItems(1) & [..._#defs."/$defs/configuration/$defs/managed_storage_configuration"]])
	})

	#service_connect_defaults: close({
		namespace!: string
	})

	#setting: close({
		name!:  string
		value!: string
	})

	_#defs: "/$defs/configuration/$defs/execute_command_configuration": close({
		log_configuration?: matchN(1, [_#defs."/$defs/configuration/$defs/execute_command_configuration/$defs/log_configuration", list.MaxItems(1) & [..._#defs."/$defs/configuration/$defs/execute_command_configuration/$defs/log_configuration"]])
		kms_key_id?: string
		logging?:    string
	})

	_#defs: "/$defs/configuration/$defs/execute_command_configuration/$defs/log_configuration": close({
		cloud_watch_encryption_enabled?: bool
		cloud_watch_log_group_name?:     string
		s3_bucket_encryption_enabled?:   bool
		s3_bucket_name?:                 string
		s3_key_prefix?:                  string
	})

	_#defs: "/$defs/configuration/$defs/managed_storage_configuration": close({
		fargate_ephemeral_storage_kms_key_id?: string
		kms_key_id?:                           string
	})
}
