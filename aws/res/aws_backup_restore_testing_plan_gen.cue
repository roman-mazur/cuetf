package res

#aws_backup_restore_testing_plan: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_backup_restore_testing_plan")
	arn?:                          string
	name!:                         string
	schedule_expression!:          string
	schedule_expression_timezone?: string
	start_window_hours?:           number
	tags?: [string]:     string
	tags_all?: [string]: string
	recovery_point_selection?: #recovery_point_selection | [...#recovery_point_selection]

	#recovery_point_selection: {
		algorithm!: string
		exclude_vaults?: [...string]
		include_vaults!: [...string]
		recovery_point_types!: [...string]
		selection_window_days?: number
	}
}
