package res

#aws_backup_restore_testing_selection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_backup_restore_testing_selection")
	close({
		iam_role_arn!: string
		name!:         string
		protected_resource_arns?: [...string]
		protected_resource_type!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		restore_metadata_overrides?: [string]: string
		restore_testing_plan_name!: string
		validation_window_hours?:   number
		protected_resource_conditions?: matchN(1, [#protected_resource_conditions, [...#protected_resource_conditions]])
	})

	#protected_resource_conditions: close({
		string_equals?: matchN(1, [_#defs."/$defs/protected_resource_conditions/$defs/string_equals", [..._#defs."/$defs/protected_resource_conditions/$defs/string_equals"]])
		string_not_equals?: matchN(1, [_#defs."/$defs/protected_resource_conditions/$defs/string_not_equals", [..._#defs."/$defs/protected_resource_conditions/$defs/string_not_equals"]])
	})

	_#defs: "/$defs/protected_resource_conditions/$defs/string_equals": close({
		key!:   string
		value!: string
	})

	_#defs: "/$defs/protected_resource_conditions/$defs/string_not_equals": close({
		key!:   string
		value!: string
	})
}
