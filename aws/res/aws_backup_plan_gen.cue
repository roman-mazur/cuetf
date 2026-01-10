package res

import "list"

#aws_backup_plan: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_backup_plan")
	close({
		arn?:  string
		id?:   string
		name!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		tags?: [string]: string
		advanced_backup_setting?: matchN(1, [#advanced_backup_setting, [...#advanced_backup_setting]])
		tags_all?: [string]: string
		version?: string
		rule!: matchN(1, [#rule, [_, ...] & [...#rule]])
		scan_setting?: matchN(1, [#scan_setting, [...#scan_setting]])
	})

	#advanced_backup_setting: close({
		backup_options!: [string]: string
		resource_type!: string
	})

	#rule: close({
		completion_window?:        number
		enable_continuous_backup?: bool
		recovery_point_tags?: [string]: string
		rule_name!:                    string
		schedule?:                     string
		schedule_expression_timezone?: string
		start_window?:                 number
		copy_action?: matchN(1, [_#defs."/$defs/rule/$defs/copy_action", [..._#defs."/$defs/rule/$defs/copy_action"]])
		target_logically_air_gapped_backup_vault_arn?: string
		lifecycle?: matchN(1, [_#defs."/$defs/rule/$defs/lifecycle", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/lifecycle"]])
		scan_action?: matchN(1, [_#defs."/$defs/rule/$defs/scan_action", [..._#defs."/$defs/rule/$defs/scan_action"]])
		target_vault_name!: string
	})

	#scan_setting: close({
		malware_scanner!: string
		resource_types!: [...string]
		scanner_role_arn!: string
	})

	_#defs: "/$defs/rule/$defs/copy_action": close({
		lifecycle?: matchN(1, [_#defs."/$defs/rule/$defs/copy_action/$defs/lifecycle", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/copy_action/$defs/lifecycle"]])
		destination_vault_arn!: string
	})

	_#defs: "/$defs/rule/$defs/copy_action/$defs/lifecycle": close({
		cold_storage_after?:                        number
		delete_after?:                              number
		opt_in_to_archive_for_supported_resources?: bool
	})

	_#defs: "/$defs/rule/$defs/lifecycle": close({
		cold_storage_after?:                        number
		delete_after?:                              number
		opt_in_to_archive_for_supported_resources?: bool
	})

	_#defs: "/$defs/rule/$defs/scan_action": close({
		malware_scanner!: string
		scan_mode!:       string
	})
}
