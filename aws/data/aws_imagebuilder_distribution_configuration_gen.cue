package data

#aws_imagebuilder_distribution_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_imagebuilder_distribution_configuration")
	close({
		arn!:          string
		date_created?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:       string
		date_updated?: string
		description?:  string
		distribution?: [...close({
			ami_distribution_configuration?: [...close({
				ami_tags?: [string]: string
				description?: string
				kms_key_id?:  string
				launch_permission?: [...close({
					organization_arns?: [...string]
					organizational_unit_arns?: [...string]
					user_groups?: [...string]
					user_ids?: [...string]
				})]
				name?: string
				target_account_ids?: [...string]
			})]
			container_distribution_configuration?: [...close({
				container_tags?: [...string]
				description?: string
				target_repository?: [...close({
					repository_name?: string
					service?:         string
				})]
			})]
			fast_launch_configuration?: [...close({
				account_id?: string
				enabled?:    bool
				launch_template?: [...close({
					launch_template_id?:      string
					launch_template_name?:    string
					launch_template_version?: string
				})]
				max_parallel_launches?: number
				snapshot_configuration?: [...close({
					target_resource_count?: number
				})]
			})]
			launch_template_configuration?: [...close({
				account_id?:         string
				default?:            bool
				launch_template_id?: string
			})]
			license_configuration_arns?: [...string]
			region?: string
			s3_export_configuration?: [...close({
				disk_image_format?: string
				role_name?:         string
				s3_bucket?:         string
				s3_prefix?:         string
			})]
			ssm_parameter_configuration?: [...close({
				ami_account_id?: string
				data_type?:      string
				parameter_name?: string
			})]
		})]
		id?:   string
		name?: string
		tags?: [string]: string
	})
}
