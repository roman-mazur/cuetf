package res

import "list"

#aws_imagebuilder_distribution_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_imagebuilder_distribution_configuration")
	close({
		arn?:          string
		date_created?: string
		date_updated?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:      string
		description?: string
		id?:          string
		name!:        string
		tags?: [string]:     string
		tags_all?: [string]: string
		distribution?: matchN(1, [#distribution, [_, ...] & [...#distribution]])
	})

	#distribution: close({
		ami_distribution_configuration?: matchN(1, [_#defs."/$defs/distribution/$defs/ami_distribution_configuration", list.MaxItems(1) & [..._#defs."/$defs/distribution/$defs/ami_distribution_configuration"]])
		container_distribution_configuration?: matchN(1, [_#defs."/$defs/distribution/$defs/container_distribution_configuration", list.MaxItems(1) & [..._#defs."/$defs/distribution/$defs/container_distribution_configuration"]])
		fast_launch_configuration?: matchN(1, [_#defs."/$defs/distribution/$defs/fast_launch_configuration", list.MaxItems(1000) & [..._#defs."/$defs/distribution/$defs/fast_launch_configuration"]])
		launch_template_configuration?: matchN(1, [_#defs."/$defs/distribution/$defs/launch_template_configuration", list.MaxItems(100) & [..._#defs."/$defs/distribution/$defs/launch_template_configuration"]])
		s3_export_configuration?: matchN(1, [_#defs."/$defs/distribution/$defs/s3_export_configuration", list.MaxItems(1) & [..._#defs."/$defs/distribution/$defs/s3_export_configuration"]])
		ssm_parameter_configuration?: matchN(1, [_#defs."/$defs/distribution/$defs/ssm_parameter_configuration", [..._#defs."/$defs/distribution/$defs/ssm_parameter_configuration"]])
		license_configuration_arns?: [...string]
		region!: string
	})

	_#defs: "/$defs/distribution/$defs/ami_distribution_configuration": close({
		launch_permission?: matchN(1, [_#defs."/$defs/distribution/$defs/ami_distribution_configuration/$defs/launch_permission", list.MaxItems(1) & [..._#defs."/$defs/distribution/$defs/ami_distribution_configuration/$defs/launch_permission"]])
		ami_tags?: [string]: string
		description?: string
		kms_key_id?:  string
		name?:        string
		target_account_ids?: [...string]
	})

	_#defs: "/$defs/distribution/$defs/ami_distribution_configuration/$defs/launch_permission": close({
		organization_arns?: [...string]
		organizational_unit_arns?: [...string]
		user_groups?: [...string]
		user_ids?: [...string]
	})

	_#defs: "/$defs/distribution/$defs/container_distribution_configuration": close({
		target_repository?: matchN(1, [_#defs."/$defs/distribution/$defs/container_distribution_configuration/$defs/target_repository", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/distribution/$defs/container_distribution_configuration/$defs/target_repository"]])
		container_tags?: [...string]
		description?: string
	})

	_#defs: "/$defs/distribution/$defs/container_distribution_configuration/$defs/target_repository": close({
		repository_name!: string
		service!:         string
	})

	_#defs: "/$defs/distribution/$defs/fast_launch_configuration": close({
		launch_template?: matchN(1, [_#defs."/$defs/distribution/$defs/fast_launch_configuration/$defs/launch_template", list.MaxItems(1) & [..._#defs."/$defs/distribution/$defs/fast_launch_configuration/$defs/launch_template"]])
		snapshot_configuration?: matchN(1, [_#defs."/$defs/distribution/$defs/fast_launch_configuration/$defs/snapshot_configuration", list.MaxItems(1) & [..._#defs."/$defs/distribution/$defs/fast_launch_configuration/$defs/snapshot_configuration"]])
		account_id!:            string
		enabled!:               bool
		max_parallel_launches?: number
	})

	_#defs: "/$defs/distribution/$defs/fast_launch_configuration/$defs/launch_template": close({
		launch_template_id?:      string
		launch_template_name?:    string
		launch_template_version?: string
	})

	_#defs: "/$defs/distribution/$defs/fast_launch_configuration/$defs/snapshot_configuration": close({
		target_resource_count?: number
	})

	_#defs: "/$defs/distribution/$defs/launch_template_configuration": close({
		account_id?:         string
		default?:            bool
		launch_template_id!: string
	})

	_#defs: "/$defs/distribution/$defs/s3_export_configuration": close({
		disk_image_format!: string
		role_name!:         string
		s3_bucket!:         string
		s3_prefix?:         string
	})

	_#defs: "/$defs/distribution/$defs/ssm_parameter_configuration": close({
		ami_account_id?: string
		data_type?:      string
		parameter_name!: string
	})
}
