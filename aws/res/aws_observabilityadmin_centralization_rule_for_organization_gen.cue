package res

#aws_observabilityadmin_centralization_rule_for_organization: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_observabilityadmin_centralization_rule_for_organization")
	close({
		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:    string
		rule_arn?:  string
		rule_name!: string
		tags?: [string]:     string
		tags_all?: [string]: string
		rule?: matchN(1, [#rule, [...#rule]])
		timeouts?: #timeouts
	})

	#rule: close({
		destination?: matchN(1, [_#defs."/$defs/rule/$defs/destination", [..._#defs."/$defs/rule/$defs/destination"]])
		source?: matchN(1, [_#defs."/$defs/rule/$defs/source", [..._#defs."/$defs/rule/$defs/source"]])
	})

	#timeouts: close({
		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		create?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		update?: string
	})

	_#defs: "/$defs/rule/$defs/destination": close({
		destination_logs_configuration?: matchN(1, [_#defs."/$defs/rule/$defs/destination/$defs/destination_logs_configuration", [..._#defs."/$defs/rule/$defs/destination/$defs/destination_logs_configuration"]])
		account!: string
		region!:  string
	})

	_#defs: "/$defs/rule/$defs/destination/$defs/destination_logs_configuration": close({
		backup_configuration?: matchN(1, [_#defs."/$defs/rule/$defs/destination/$defs/destination_logs_configuration/$defs/backup_configuration", [..._#defs."/$defs/rule/$defs/destination/$defs/destination_logs_configuration/$defs/backup_configuration"]])
		logs_encryption_configuration?: matchN(1, [_#defs."/$defs/rule/$defs/destination/$defs/destination_logs_configuration/$defs/logs_encryption_configuration", [..._#defs."/$defs/rule/$defs/destination/$defs/destination_logs_configuration/$defs/logs_encryption_configuration"]])
	})

	_#defs: "/$defs/rule/$defs/destination/$defs/destination_logs_configuration/$defs/backup_configuration": close({
		kms_key_arn?: string
		region?:      string
	})

	_#defs: "/$defs/rule/$defs/destination/$defs/destination_logs_configuration/$defs/logs_encryption_configuration": close({
		encryption_conflict_resolution_strategy?: string
		encryption_strategy!:                     string
		kms_key_arn?:                             string
	})

	_#defs: "/$defs/rule/$defs/source": close({
		source_logs_configuration?: matchN(1, [_#defs."/$defs/rule/$defs/source/$defs/source_logs_configuration", [..._#defs."/$defs/rule/$defs/source/$defs/source_logs_configuration"]])
		regions!: [...string]
		scope!: string
	})

	_#defs: "/$defs/rule/$defs/source/$defs/source_logs_configuration": close({
		encrypted_log_group_strategy!: string
		log_group_selection_criteria!: string
	})
}
