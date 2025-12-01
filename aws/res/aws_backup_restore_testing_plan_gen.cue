package res

#aws_backup_restore_testing_plan: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_backup_restore_testing_plan")
	close({
		arn?:  string
		name!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                       string
		schedule_expression!:          string
		schedule_expression_timezone?: string
		start_window_hours?:           number
		tags?: [string]:     string
		tags_all?: [string]: string
		recovery_point_selection?: matchN(1, [#recovery_point_selection, [...#recovery_point_selection]])
	})

	#recovery_point_selection: close({
		algorithm!: string
		exclude_vaults?: [...string]
		include_vaults!: [...string]
		recovery_point_types!: [...string]
		selection_window_days?: number
	})
}
