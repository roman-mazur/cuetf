package data

#aws_backup_plan: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_backup_plan")
	close({
		arn?:     string
		id?:      string
		name?:    string
		plan_id!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		rule?: [...close({
			completion_window?: number
			copy_action?: [...close({
				destination_vault_arn?: string
				lifecycle?: [...close({
					cold_storage_after?:                        number
					delete_after?:                              number
					opt_in_to_archive_for_supported_resources?: bool
				})]
			})]
			enable_continuous_backup?: bool
			lifecycle?: [...close({
				cold_storage_after?:                        number
				delete_after?:                              number
				opt_in_to_archive_for_supported_resources?: bool
			})]
			recovery_point_tags?: [string]: string
			rule_name?: string
			scan_action?: [...close({
				malware_scanner?: string
				scan_mode?:       string
			})]
			schedule?:                                     string
			schedule_expression_timezone?:                 string
			start_window?:                                 number
			target_logically_air_gapped_backup_vault_arn?: string
			target_vault_name?:                            string
		})]
		scan_setting?: [...close({
			malware_scanner?: string
			resource_types?: [...string]
			scanner_role_arn?: string
		})]
		tags?: [string]: string
		version?: string
	})
}
